console.log('JS LOADED')

$(function(){
    $('.Speedometer-box').hide()
    $('.text-velocity2').hide()
    $('.text-velocity').hide()
    $('.seatbelt').hide()
    $('.fuel').hide()
    $('.car').hide()
    $('.limiter').hide()
    $('.text-car').hide()
    $('.text-fuel').hide()
    $('.rpm2').hide()
    $('.corta').hide()
    $('.larga').hide()

    let fuelAnterior = -50;
    let inChangeFuel = false;
    let vidaAnterior = -50;
    let inChangeVida = false;
    let time2 = 4500;
    let time3 = 0;
    let firts = true;
    let primerCintu = false;
    let apagada = true;
    let corta = true;
    let larga = true;
    let escondiendose = false;
    let saliendo = false;
    let marchaAnterior = -50;

    window.addEventListener('message', function(event){
        let data = event.data
        if (data.action == 'carhud'){
            if (data.mostrar){

                if (!data.menuActive){
                    $('.speedometer-box').fadeIn(1000)
                }else{
                    $('.speedometer-box').fadeOut(1000)
                }

                if (firts){
                    firts = false;
                    $('.Speedometer-box').fadeIn(1000)
                    console.log('sale')
                    time2 = 2000;
                    time3 = 2000;
                    setTimeout(function(){
                        let time = 0
                        $('.Speedometer-box #Hud').each(function(){
                            let elemento = $(this)
                            elemento.delay(time).fadeIn(400);
                            time += 100;
                        });
                        setTimeout(function(){
                            time2 = 0;
                        }, 1000);
                    }, 800);
                };
                
                if (data.on){

                    if (data.velocidad == 0){
                        data.marcha = 'N'
                    }

                    if (data.marcha == 0 && data.velocidad != 0){
                        data.marcha = 'R'
                    }

                    if (data.marcha != marchaAnterior){
                        marchaAnterior = data.marcha
                        $('.text-shift').fadeOut(400)
                        setTimeout(function(){
                            $('.text-shift').html(data.marcha)
                            $('.text-shift').fadeIn(400)
                        }, 400)
                    }

                    if (data.velocidad.toString().substring(1, 2) == ''){
                        data.velocidad = '<span style="color: transparent; text-shadow: 0 0 0 transparent;">00</span>' + data.velocidad
                    }else if(data.velocidad.toString().substring(2, 3) == ''){
                        data.velocidad = '<span style="color: transparent; text-shadow: 0 0 0 transparent;">0</span>' + data.velocidad
                    }

                    $('.text-velocity').html(data.velocidad)

                    if (data.sirenas){
                        $('.Speedometer-box').css({border: '2px solid rgb(0,0,255)'})
                        $('.Speedometer-box').addClass('sirens')
                    }else{
                        $('.Speedometer-box').removeClass('sirens')
                        $('.Speedometer-box').css({border: '2px solid rgba(0,0,255,0)'})
                    }

                    if (data.fuel != fuelAnterior){
                        console.log(data.fuel)
                        inChangeFuel = true;
                        fuelAnterior = data.fuel;
                        $('.text-fuel').fadeOut(400)
                        setTimeout(function(){
                            $('.text-fuel').html(data.fuel)
                            if (data.fuel < 20){
                                $('.fuel').addClass('parpadea');
                            }else{
                                $('.fuel').removeClass('parpadea');
                            }
                            
                            $('.text-fuel').fadeIn(400)
                            setTimeout(function(){
                                inChangeFuel = false;
                            }, 400)
                        }, 400);
                    };

                    if (data.vida != vidaAnterior){
                        inChangeVida = true;
                        vidaAnterior = data.vida;
                        $('.text-car').fadeOut(400)
                        setTimeout(function(){
                            $('.text-car').html(data.vida)
                            if (data.vida < 40){
                                $('.car').addClass('parpadea');
                            }else{
                                $('.car').removeClass('parpadea');
                            }
                            $('.text-car').fadeIn(400)
                            setTimeout(function(){
                                inChangeVida = false;
                            }, 400)
                        }, 400);
                    };

                    $('.rpm').css({width: (data.rpm) + '%'})

                    if (!data.moto){
                        if (!data.bici){
                            if (!data.barco){
                                if (!data.heli){
                                    if (!data.cinturon){
                                        $('.seatbelt').fadeIn(500);
                                        if (!primerCintu){
                                            setTimeout(function(){
                                                $('.seatbelt').addClass('parpadea');
                                            }, 500)
                                        }
                                        primerCintu = true;
                                    }else{
                                        if (primerCintu){
                                            $('.seatbelt').removeClass('parpadea');
                                            $('.seatbelt').fadeOut(500);
                                            primerCintu = false;
                                        };
                                    };
                                }else{
                                    $('.seatbelt').hide();
                                };
                            }else{
                                $('.seatbelt').hide();
                            };
                        }else{
                            $('.seatbelt').hide();
                        };
                    }else{
                        $('.seatbelt').hide();
                    };

                    if (data.rpm > 59){
                        $('.rpm').css({backgroundColor: 'rgb(255,0,0)'})
                    }else if (data.rpm > 40 && data.rpm < 60){
                        $('.rpm').css({backgroundColor: 'rgb(189,255,0)'})
                    }else if (data.rpm < 41){
                        $('.rpm').css({backgroundColor: 'rgb(255,255,255)'})
                    }

                    if (data.limitador){
                        $('.limiter').css({color: 'rgb(255,255,255)'})
                    }else{
                        $('.limiter').css({color: 'rgb(150, 150, 150)'})
                    }

                    if (data.luces == 'largas'){
                        $('.corta').fadeOut(500)
                        $('.larga').fadeIn(500)
                    }else if (data.luces == 'encendidas'){
                        $('.larga').hide()
                        $('.corta').fadeIn(500)
                    }else{
                        $('.corta').hide()
                        $('.larga').fadeOut(500)
                    };

                    if (data.luces == 'encendidas' || data.luces == 'largas'){
                        $('.text-velocity').css({textShadow: '0px 0px 4px rgba(255, 255, 255, 0.4)', opacity: '1'})
                        $('.text-car').css({textShadow: '0px 0px 4px rgba(255, 255, 255, 0.4)', opacity: '1'})
                        if (!inChangeFuel){
                            $('.text-fuel').css({textShadow: '0px 0px 4px rgba(255, 255, 255, 0.4)', opacity: '1'});
                        }
                        $('.rpm').css({opacity: '1'})
                        $('.rpm2').css({boxShadow: '0px 0px 4px rgba(255, 255, 255, .4)'})
                        if (data.fuel > 19){
                            $('.fuel').css({color: 'rgb(255,255,255)'});
                        };
                        $('.car').css({color: 'rgb(255,255,255)'})
                    }else{
                        $('.text-velocity').css({textShadow: '0px 0px 0px rgba(255, 255, 255, 0)', opacity: '.75'})
                        $('.text-car').css({textShadow: '0px 0px 0px rgba(255, 255, 255, 0)', opacity: '.75'})
                        if (!inChangeFuel){
                            $('.text-fuel').css({textShadow: '0px 0px 0px rgba(255, 255, 255, 0)', opacity: '.75'})
                        };
                        $('.rpm').css({opacity: '.75'})
                        $('.rpm2').css({boxShadow: '0px 0px 4px rgba(255, 255, 255, 0)'})
                        if (data.fuel > 19){
                            $('.fuel').css({color: 'rgb(175, 175, 175)'});
                        };
                        $('.car').css({color: 'rgb(175, 175, 175)'})
                    };
                }else{
                    $('.text-velocity').html('0')
                };
            }else{
                if (!firts){
                    if (saliendo){
                        setTimeout(function(){
                            firts = true;
                            escondiendose = true;
                            let time = 0
                            console.log('se esconde')
                            $('.Speedometer-box #Hud').each(function(){
                                let elemento = $(this)
                                elemento.delay(time).hide(600)
                                time += 200
                            });
                            setTimeout(function(){
                                $('.Speedometer-box').fadeOut(1000)
                                setTimeout(function(){
                                    escondiendose = false;
                                }, 1000)
                            }, 2200)
                        }, 3500)
                    }else{
                        firts = true;
                        escondiendose = true;
                        let time = 0
                        console.log('se esconde')
                        $('.Speedometer-box #Hud').each(function(){
                            let elemento = $(this)
                            elemento.delay(time).fadeOut(400)
                            time += 100
                        });
                        setTimeout(function(){
                            $('.Speedometer-box').fadeOut(1000)
                            setTimeout(function(){
                                escondiendose = false;
                            }, 1000)
                        }, 1400)
                    }
                }
            };
        };
    });
});