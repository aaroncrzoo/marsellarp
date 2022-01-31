Config = {}
Config.control_buttons = {
    open_menu = 170,    -- just one button
    close_menu = {170, 25}, -- should be a table
    up = 188, -- go to upper item
    down = 187, -- go to lower item
    left = 189, -- go to left item
    right = 190, -- go to right item
    select = 201, -- select item
    go_back = {202}, -- go to back should be an table
}
Config.animation_menu = {
    title = "MENÚ DE ANIMACIONES",
    close_after_action = false,
    categories= {
        {
            name = 'walk',
            icon = '<path d="M14.12,10H19V8.2H15.38L13.38,4.87C13.08,4.37 12.54,4.03 11.92,4.03C11.74,4.03 11.58,4.06 11.42,4.11L6,5.8V11H7.8V7.33L9.91,6.67L6,22H7.8L10.67,13.89L13,17V22H14.8V15.59L12.31,11.05L13.04,8.18M14,3.8C15,3.8 15.8,3 15.8,2C15.8,1 15,0.2 14,0.2C13,0.2 12.2,1 12.2,2C12.2,3 13,3.8 14,3.8Z" />',
            items = {
                {
                    label = "Ancheado <span>[/walk Ancheado]</span>",
                    action = function()
                        ExecuteCommand("walk Ancheado")
                    end
                },
                {
                    label = "Adinerado <span>[/walk Adinerado]</span>",
                    action = function()
                        ExecuteCommand("walk Adinerado")
                    end
                },
                {
                    label = "Afeminado <span>[/walk Afeminado]</span>",
                    action = function()
                        ExecuteCommand("walk Afeminado")
                    end
                },
                {
                    label = "Afeminado2 <span>[/walk Afeminado2]</span>",
                    action = function()
                        ExecuteCommand("walk Afeminado2")
                    end
                },
                {
                    label = "Alien <span>[/walk alien]</span>",
                    action = function()
                        ExecuteCommand("walk alien")
                    end
                },
                {
                    label = "Apurado <span>[/walk Apurado]</span>",
                    action = function()
                        ExecuteCommand("walk Apurado")
                    end
                },
                {
                    label = "Apurado2 <span>[/walk Apurado2]</span>",
                    action = function()
                        ExecuteCommand("walk Apurado2")
                    end
                },
                {
                    label = "Ardiente <span>[/walk Ardiente]</span>",
                    action = function()
                        ExecuteCommand("walk Ardiente")
                    end
                },
                {
                    label = "Ardiente2 <span>[/walk Ardiente2]</span>",
                    action = function()
                        ExecuteCommand("walk Ardiente2")
                    end
                },
                {
                    label = "Ardiente3 <span>[/walk Ardiente3]</span>",
                    action = function()
                        ExecuteCommand("walk Ardiente3")
                    end
                },
                {
                    label = "Arrogante <span>[/walk Arrogante]</span>",
                    action = function()
                        ExecuteCommand("walk Arrogante")
                    end
                },
                {
                    label = "Asustado <span>[/walk Asustado]</span>",
                    action = function()
                        ExecuteCommand("walk Asustado")
                    end
                },
                {
                    label = "Basurero <span>[/walk Basurero]</span>",
                    action = function()
                        ExecuteCommand("walk Basurero")
                    end
                },
                {
                    label = "Basurero2 <span>[/walk Basurero2]</span>",
                    action = function()
                        ExecuteCommand("walk Basurero2")
                    end
                },
                {
                    label = "Borracho <span>[/walk Borracho]</span>",
                    action = function()
                        ExecuteCommand("walk Borracho")
                    end
                },
                {
                    label = "Borracho2 <span>[/walk Borracho2]</span>",
                    action = function()
                        ExecuteCommand("walk Borracho2")
                    end
                },
                {
                    label = "Borracho3 <span>[/walk Borracho3]</span>",
                    action = function()
                        ExecuteCommand("walk Borracho3")
                    end
                },
                {
                    label = "Cansado <span>[/walk Cansado]</span>",
                    action = function()
                        ExecuteCommand("walk Cansado")
                    end
                },
                {
                    label = "Casual <span>[/walk Casual]</span>",
                    action = function()
                        ExecuteCommand("walk Casual")
                    end
                },
                {
                    label = "Casual2 <span>[/walk Casual2]</span>",
                    action = function()
                        ExecuteCommand("walk Casual2")
                    end
                },
                {
                    label = "Casual3 <span>[/walk Casual3]</span>",
                    action = function()
                        ExecuteCommand("walk Casual3")
                    end
                },
                {
                    label = "Casual4 <span>[/walk Casual4]</span>",
                    action = function()
                        ExecuteCommand("walk Casual4")
                    end
                },
                {
                    label = "Casual5 <span>[/walk Casual5]</span>",
                    action = function()
                        ExecuteCommand("walk Casual5")
                    end
                },
                {
                    label = "Confiado <span>[/walk Confiado]</span>",
                    action = function()
                        ExecuteCommand("walk Confiado")
                    end
                },
                {
                    label = "Descarado <span>[/walk Descarado]</span>",
                    action = function()
                        ExecuteCommand("walk Descarado")
                    end
                },
                {
                    label = "Descarado2 <span>[/walk Descarado2]</span>",
                    action = function()
                        ExecuteCommand("walk Descarado2")
                    end
                },
                {
                    label = "Dura <span>[/walk Dura]</span>",
                    action = function()
                        ExecuteCommand("walk Dura")
                    end
                },
                {
                    label = "Duro <span>[/walk Duro]</span>",
                    action = function()
                        ExecuteCommand("walk Duro")
                    end
                },
                {
                    label = "Elegante <span>[/walk Elegante]</span>",
                    action = function()
                        ExecuteCommand("walk Elegante")
                    end
                },
                {
                    label = "Elegante2 <span>[/walk Elegante2]</span>",
                    action = function()
                        ExecuteCommand("walk Elegante2")
                    end
                },
                {
                    label = "Esposado <span>[/walk Esposado]</span>",
                    action = function()
                        ExecuteCommand("walk Esposado")
                    end
                },
                {
                    label = "Excursionismo <span>[/walk Excursionismo]</span>",
                    action = function()
                        ExecuteCommand("walk Excursionismo")
                    end
                },
                {
                    label = "Franklin <span>[/walk Franklin]</span>",
                    action = function()
                        ExecuteCommand("walk Franklin")
                    end
                },
                {
                    label = "Gangster <span>[/walk Gangster]</span>",
                    action = function()
                        ExecuteCommand("walk Gangster")
                    end
                },
                {
                    label = "Gangster2 <span>[/walk Gangster2]</span>",
                    action = function()
                        ExecuteCommand("walk Gangster2")
                    end
                },
                {
                    label = "Gangster3 <span>[/walk Gangster3]</span>",
                    action = function()
                        ExecuteCommand("walk Gangster3")
                    end
                },
                {
                    label = "Gangster4 <span>[/walk Gangster4]</span>",
                    action = function()
                        ExecuteCommand("walk Gangster4")
                    end
                },
                {
                    label = "Gangster5 <span>[/walk Gangster5]</span>",
                    action = function()
                        ExecuteCommand("walk Gangster5")
                    end
                },
                {
                    label = "Guardia <span>[/walk Guardia]</span>",
                    action = function()
                        ExecuteCommand("walk Guardia")
                    end
                },
                {
                    label = "Hipster <span>[/walk Hipster]</span>",
                    action = function()
                        ExecuteCommand("walk Hipster")
                    end
                },
                {
                    label = 'Hombre predeterminado <span>[/walk "hombre predeterminado"]</span>',
                    action = function()
                        ExecuteCommand('walk "hombre predeterminado"')
                    end
                },
                {
                    label = 'Herido <span>[/walk "Herido"]</span>',
                    action = function()
                        ExecuteCommand('walk "Herido"')
                    end
                },
                {
                    label = "Lemar <span>[/walk Lemar]</span>",
                    action = function()
                        ExecuteCommand("walk Lemar")
                    end
                },
                {
                    label = "Lento <span>[/walk Lento]</span>",
                    action = function()
                        ExecuteCommand("walk Lento")
                    end
                },
                {
                    label = "Lester <span>[/walk Lester]</span>",
                    action = function()
                        ExecuteCommand("walk Lester")
                    end
                },
                {
                    label = "Lester2 <span>[/walk Lester2]</span>",
                    action = function()
                        ExecuteCommand("walk Lester2")
                    end
                },
                {
                    label = "Maleante <span>[/walk Maleante]</span>",
                    action = function()
                        ExecuteCommand("walk Maleante")
                    end
                },
                {
                    label = "Marchoso <span>[/walk Marchoso]</span>",
                    action = function()
                        ExecuteCommand("walk Marchoso")
                    end
                },
                {
                    label = "Michael <span>[/walk Michael]</span>",
                    action = function()
                        ExecuteCommand("walk Michael")
                    end
                },
                {
                    label = 'Mujer predeterminada <span>[/walk "mujer predeterminada"]</span>',
                    action = function()
                        ExecuteCommand('walk "mujer predeterminada"')
                    end
                },
                {
                    label = "Musculoso <span>[/walk Musculoso]</span>",
                    action = function()
                        ExecuteCommand("walk Musculoso")
                    end
                },
                {
                    label = "Pija <span>[/walk Pija]</span>",
                    action = function()
                        ExecuteCommand("walk Pija")
                    end
                },
                {
                    label = "Policia <span>[/walk Policia]</span>",
                    action = function()
                        ExecuteCommand("walk Policia")
                    end
                },
                {
                    label = "Policia2 <span>[/walk Policia2]</span>",
                    action = function()
                        ExecuteCommand("walk Policia2")
                    end
                },
                {
                    label = "Policia3 <span>[/walk Policia3]</span>",
                    action = function()
                        ExecuteCommand("walk Policia3")
                    end
                },
                {
                    label = "Portero <span>[/walk Portero]</span>",
                    action = function()
                        ExecuteCommand("walk Portero")
                    end
                },
                {
                    label = "Portero2 <span>[/walk Portero2]</span>",
                    action = function()
                        ExecuteCommand("walk Portero2")
                    end
                },
                {
                    label = "Prisa <span>[/walk Prisa]</span>",
                    action = function()
                        ExecuteCommand("walk Prisa")
                    end
                },
                {
                    label = "Seguro <span>[/walk Seguro]</span>",
                    action = function()
                        ExecuteCommand("walk Seguro")
                    end
                },
                {
                    label = "Sexy <span>[/walk Sexy]</span>",
                    action = function()
                        ExecuteCommand("walk Sexy")
                    end
                },
                {
                    label = "Swagger <span>[/walk Swagger]</span>",
                    action = function()
                        ExecuteCommand("walk Swagger")
                    end
                },
                {
                    label = "Tacones <span>[/walk Tacones]</span>",
                    action = function()
                        ExecuteCommand("walk Tacones")
                    end
                },
                {
                    label = "Tacones2 <span>[/walk Tacones2]</span>",
                    action = function()
                        ExecuteCommand("walk Tacones2")
                    end
                },
                {
                    label = "Trevor <span>[/walk Trevor]</span>",
                    action = function()
                        ExecuteCommand("walk Trevor")
                    end
                },
                {
                    label = "Triste <span>[/walk Triste]</span>",
                    action = function()
                        ExecuteCommand("walk Triste")
                    end
                },
                {
                    label = "Trote <span>[/walk Trote]</span>",
                    action = function()
                        ExecuteCommand("walk Trote")
                    end
                },
                {
                    label = "Valiente <span>[/walk Valiente]</span>",
                    action = function()
                        ExecuteCommand("walk Valiente")
                    end
                }
            }
        },
        {
            name = 'faceemotes',
            icon = '<path d="M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2M7,9.5C7,8.7 7.7,8 8.5,8C9.3,8 10,8.7 10,9.5C10,10.3 9.3,11 8.5,11C7.7,11 7,10.3 7,9.5M12,17.23C10.25,17.23 8.71,16.5 7.81,15.42L9.23,14C9.68,14.72 10.75,15.23 12,15.23C13.25,15.23 14.32,14.72 14.77,14L16.19,15.42C15.29,16.5 13.75,17.23 12,17.23M15.5,11C14.7,11 14,10.3 14,9.5C14,8.7 14.7,8 15.5,8C16.3,8 17,8.7 17,9.5C17,10.3 16.3,11 15.5,11Z" />',
            items = {
                {
                    label = "Alegre <span>[/faceemote Alegre]</span>",
                    action = function()
                        ExecuteCommand('faceemote Alegre')
                    end
                },
                {
                    label = "Bocazas <span>[/faceemote Bocazas]</span>",
                    action = function()
                        ExecuteCommand('faceemote Bocazas')
                    end
                },
                {
                    label = "Borracho <span>[/faceemote Borracho]</span>",
                    action = function()
                        ExecuteCommand('faceemote Borracho')
                    end
                },
                {
                    label = "Contento <span>[/faceemote Contento]</span>",
                    action = function()
                        ExecuteCommand('faceemote Contento')
                    end
                },
                {
                    label = "Dañado <span>[/faceemote Dañado]</span>",
                    action = function()
                        ExecuteCommand('faceemote Dañado')
                    end
                },
                {
                    label = "Dormido <span>[/faceemote Dormido]</span>",
                    action = function()
                        ExecuteCommand('faceemote Dormido')
                    end
                },
                {
                    label = "Dormido2 <span>[/faceemote Dormido2]</span>",
                    action = function()
                        ExecuteCommand('faceemote Dormido2')
                    end
                },
                {
                    label = "Dormido3 <span>[/faceemote Dormido3]</span>",
                    action = function()
                        ExecuteCommand('faceemote Dormido3')
                    end
                },
                {
                    label = "Electrocutado <span>[/faceemote Electrocutado]</span>",
                    action = function()
                        ExecuteCommand('faceemote Electrocutado')
                    end
                },
                {
                    label = "Emocionado <span>[/faceemote Emocionado]</span>",
                    action = function()
                        ExecuteCommand('faceemote Emocionado')
                    end
                },
                {
                    label = "Emocionado2 <span>[/faceemote Emocionado2]</span>",
                    action = function()
                        ExecuteCommand('faceemote Emocionado2')
                    end
                },
                {
                    label = "Enfadado <span>[/faceemote Enfadado]</span>",
                    action = function()
                        ExecuteCommand('faceemote Enfadado')
                    end
                },
                {
                    label = "Especulativo <span>[/faceemote Especulativo]</span>",
                    action = function()
                        ExecuteCommand('faceemote Especulativo')
                    end
                },
                {
                    label = "Estresado <span>[/faceemote Estresado]</span>",
                    action = function()
                        ExecuteCommand('faceemote Estresado')
                    end
                },
                {
                    label = "Extraño <span>[/faceemote Extraño]</span>",
                    action = function()
                        ExecuteCommand('faceemote Extraño')
                    end
                },
                {
                    label = "Extraño2 <span>[/faceemote Extraño2]</span>",
                    action = function()
                        ExecuteCommand('faceemote Extraño2')
                    end
                },
                {
                    label = "Gruñón <span>[/faceemote Gruñón]</span>",
                    action = function()
                        ExecuteCommand('faceemote Gruñón')
                    end
                },
                {
                    label = "Gruñón2 <span>[/faceemote Gruñón2]</span>",
                    action = function()
                        ExecuteCommand('faceemote Gruñón2')
                    end
                },
                {
                    label = "Gruñón3 <span>[/faceemote Gruñón3]</span>",
                    action = function()
                        ExecuteCommand('faceemote Gruñón3')
                    end
                },
                {
                    label = 'Nunca parpadee <span>[/faceemote "Nunca parpadee"]</span>',
                    action = function()
                        ExecuteCommand('faceemote "Nunca parpadee"')
                    end
                },
                {
                    label = "Presumido <span>[/faceemote Presumido]</span>",
                    action = function()
                        ExecuteCommand('faceemote Presumido')
                    end
                },
                {
                    label = "Tonto <span>[/faceemote Tonto]</span>",
                    action = function()
                        ExecuteCommand('faceemote Tonto')
                    end
                },
                {
                    label = 'Un ojo <span>[/faceemote "Un ojo"]</span>',
                    action = function()
                        ExecuteCommand('faceemote "Un ojo"')
                    end
                }
            }
        },
        {
            name = 'dance',
            icon = '<path d="M17 17H15V23H13V17H10.88L9.34 18.93L11.71 21.29L10.29 22.71L7.93 20.34C7.58 20 7.38 19.53 7.35 19.04C7.32 18.55 7.47 18.06 7.78 17.68L8.32 17H7L9 13V10C8.38 10.47 7.88 11.07 7.53 11.76C7.18 12.46 7 13.22 7 14H5C5 12.14 5.74 10.36 7.05 9.05C8.36 7.74 10.14 7 12 7C13.33 7 14.6 6.47 15.54 5.54C16.47 4.6 17 3.33 17 2H19C19 3.32 18.62 4.62 17.91 5.73C17.2 6.85 16.2 7.74 15 8.31V13L17 17M14 4C14 4.4 13.88 4.78 13.66 5.11C13.44 5.44 13.13 5.7 12.77 5.85C12.4 6 12 6.04 11.61 5.96C11.22 5.88 10.87 5.69 10.59 5.41C10.31 5.13 10.12 4.78 10.04 4.39C9.96 4 10 3.6 10.15 3.24C10.3 2.87 10.56 2.56 10.89 2.34C11.22 2.12 11.6 2 12 2C12.53 2 13.04 2.21 13.41 2.59C13.79 2.96 14 3.47 14 4Z" />',
            items = {
                {
                    label = 'Baile <span>[/e dance]</span>',
                    action = function () 
                        ExecuteCommand('e dance')
                    end
                },
                {
                    label = 'Baile 2 <span>[/e dance2]</span>',
                    action = function () 
                        ExecuteCommand('e dance2')
                    end
                },
                {
                    label = 'Baile 3 <span>[/e dance3]</span>',
                    action = function () 
                        ExecuteCommand('e dance3')
                    end
                },
                {
                    label = 'Baile 4 <span>[/e dance4]</span>',
                    action = function () 
                        ExecuteCommand('e dance4')
                    end
                },
                {
                    label = 'Baile 5 <span>[/e dance5]</span>',
                    action = function () 
                        ExecuteCommand('e dance5')
                    end
                },
                {
                    label = 'Baile 6 <span>[/e dance6]</span>',
                    action = function () 
                        ExecuteCommand('e dance6')
                    end
                },
                {
                    label = 'Baile 7 <span>[/e dance7]</span>',
                    action = function () 
                        ExecuteCommand('e dance7')
                    end
                },
                {
                    label = 'Baile 8 <span>[/e dance8]</span>',
                    action = function () 
                        ExecuteCommand('e dance8')
                    end
                },
                {
                    label = 'Baile 9 <span>[/e dance9]</span>',
                    action = function () 
                        ExecuteCommand('e dance9')
                    end
                },
                {
                    label = 'Baile 10 <span>[/e dance10]</span>',
                    action = function () 
                        ExecuteCommand('e dance10')
                    end
                },
                {
                    label = 'Baile 11 <span>[/e dance11]</span>',
                    action = function () 
                        ExecuteCommand('e dance11')
                    end
                },
                {
                    label = 'Baile 12 <span>[/e dance12]</span>',
                    action = function () 
                        ExecuteCommand('e dance12')
                    end
                },
                {
                    label = 'Baile 13 <span>[/e dance13]</span>',
                    action = function () 
                        ExecuteCommand('e dance13')
                    end
                },
                {
                    label = 'Baile con caballito <span>[/e dancehorse]</span>',
                    action = function () 
                        ExecuteCommand('e dancehorse')
                    end
                },
                {
                    label = 'Baile con caballito 2 <span>[/e dancehorse2]</span>',
                    action = function () 
                        ExecuteCommand('e dancehorse2')
                    end
                },
                {
                    label = 'Baile con caballito 3 <span>[/e dancehorse3]</span>',
                    action = function () 
                        ExecuteCommand('e dancehorse3')
                    end
                },
                {
                    label = 'Baile de palos <span>[/e danceglowstick]</span>',
                    action = function () 
                        ExecuteCommand('e danceglowstick')
                    end
                },
                {
                    label = 'Baile de palos 2 <span>[/e danceglowstick2]</span>',
                    action = function () 
                        ExecuteCommand('e danceglowstick2')
                    end
                },
                {
                    label = 'Baile de palos 3 <span>[/e danceglowstick3]</span>',
                    action = function () 
                        ExecuteCommand('e danceglowstick3')
                    end
                },
                {
                    label = 'Baile de barra <span>[/e dancebar]</span>',
                    action = function () 
                        ExecuteCommand('e dancebar')
                    end
                },
                {
                    label = 'Baile en coche <span>[/e dancecar]</span>',
                    action = function () 
                        ExecuteCommand('e dancecar')
                    end
                },
                {
                    label = 'Baile en coche 2 <span>[/e dancecar2]</span>',
                    action = function () 
                        ExecuteCommand('e dancecar2')
                    end
                },
                {
                    label = 'Baile en coche 3 <span>[/e dancecar3]</span>',
                    action = function () 
                        ExecuteCommand('e dancecar3')
                    end
                },
                {
                    label = 'Baile enérgico <span>[/e danceupper]</span>',
                    action = function () 
                        ExecuteCommand('e danceupper')
                    end
                },
                {
                    label = 'Baile enérgico 2 <span>[/e danceupper2]</span>',
                    action = function () 
                        ExecuteCommand('e danceupper2')
                    end
                },
                {
                    label = 'Baile F <span>[/e dancef]</span>',
                    action = function () 
                        ExecuteCommand('e dancef')
                    end
                },
                {
                    label = 'Baile F2 <span>[/e dancef2]</span>',
                    action = function () 
                        ExecuteCommand('e dancef2')
                    end
                },
                {
                    label = 'Baile F3 <span>[/e dancef3]</span>',
                    action = function () 
                        ExecuteCommand('e dancef3')
                    end
                },
                {
                    label = 'Baile F4 <span>[/e dancef4]</span>',
                    action = function () 
                        ExecuteCommand('e dancef4')
                    end
                },
                {
                    label = 'Baile F5 <span>[/e dancef5]</span>',
                    action = function () 
                        ExecuteCommand('e dancef5')
                    end
                },
                {
                    label = 'Baile F6 <span>[/e dancef6]</span>',
                    action = function () 
                        ExecuteCommand('e dancef6')
                    end
                },
                {
                    label = 'Baile F7 <span>[/e dancef7]</span>',
                    action = function () 
                        ExecuteCommand('e dancef7')
                    end
                },
                {
                    label = 'Baile F8 <span>[/e dancef8]</span>',
                    action = function () 
                        ExecuteCommand('e dancef8')
                    end
                },
                {
                    label = 'Baile F9 <span>[/e dancef9]</span>',
                    action = function () 
                        ExecuteCommand('e dancef9')
                    end
                },
                {
                    label = 'Baile F10 <span>[/e dancef10]</span>',
                    action = function () 
                        ExecuteCommand('e dancef10')
                    end
                },
                {
                    label = 'Baile F11 <span>[/e dancef11]</span>',
                    action = function () 
                        ExecuteCommand('e dancef11')
                    end
                },
                {
                    label = 'Baile lento <span>[/e danceslow]</span>',
                    action = function () 
                        ExecuteCommand('e danceslow')
                    end
                },
                {
                    label = 'Baile lento 2 <span>[/e danceslow2]</span>',
                    action = function () 
                        ExecuteCommand('e danceslow2')
                    end
                },
                {
                    label = 'Baile lento 3 <span>[/e danceslow3]</span>',
                    action = function () 
                        ExecuteCommand('e danceslow3')
                    end
                },
                {
                    label = 'Baile lento 4 <span>[/e danceslow4]</span>',
                    action = function () 
                        ExecuteCommand('e danceslow4')
                    end
                },
                {
                    label = 'Baile pescado <span>[/e fishdance]</span>',
                    action = function()
                        ExecuteCommand('e fishdance')
                    end
                },
                {
                    label = 'Baile sexy <span>[/e lapdance]</span>',
                    action = function()
                        ExecuteCommand('e lapdance')
                    end
                },
                {
                    label = 'Baile sexy 2 <span>[/e lapdance2]</span>',
                    action = function()
                        ExecuteCommand('e lapdance2')
                    end
                },
                {
                    label = 'Baile sexy 3 <span>[/e lapdance3]</span>',
                    action = function()
                        ExecuteCommand('e lapdance3')
                    end
                },
                {
                    label = 'Baile tímido <span>[/e danceshy]</span>',
                    action = function () 
                        ExecuteCommand('e danceshy')
                    end
                },
                {
                    label = 'Baile tímido 2 <span>[/e danceshy2]</span>',
                    action = function () 
                        ExecuteCommand('e danceshy2')
                    end
                },
                {
                    label = 'Baile tímido 3 <span>[/e danceshy3]</span>',
                    action = function () 
                        ExecuteCommand('e danceshy3')
                    end
                },
                {
                    label = 'Baile tonto <span>[/e dancesilly]</span>',
                    action = function () 
                        ExecuteCommand('e dancesilly')
                    end
                },
                {
                    label = 'Baile tonto 2 <span>[/e dancesilly2]</span>',
                    action = function () 
                        ExecuteCommand('e dancesilly2')
                    end
                },
                {
                    label = 'Baile tonto 3 <span>[/e dancesilly3]</span>',
                    action = function () 
                        ExecuteCommand('e dancesilly3')
                    end
                },
                {
                    label = 'Baile tonto 4 <span>[/e dancesilly4]</span>',
                    action = function () 
                        ExecuteCommand('e dancesilly4')
                    end
                },
                {
                    label = 'Baile tonto 5 <span>[/e dancesilly5]</span>',
                    action = function () 
                        ExecuteCommand('e dancesilly5')
                    end
                },
                {
                    label = 'Baile tonto 6 <span>[/e dancesilly6]</span>',
                    action = function () 
                        ExecuteCommand('e dancesilly6')
                    end
                },
                {
                    label = 'Baile tonto 7 <span>[/e dancesilly7]</span>',
                    action = function () 
                        ExecuteCommand('e dancesilly7')
                    end
                },
                {
                    label = 'Baile tonto 8 <span>[/e dancesilly8]</span>',
                    action = function () 
                        ExecuteCommand('e dancesilly8')
                    end
                },
                {
                    label = 'Baile tonto 9 <span>[/e dancesilly9]</span>',
                    action = function () 
                        ExecuteCommand('e dancesilly9')
                    end
                }
            }
        },
        {
            name = 'sharedance',
            icon = '<path d="M14 3.5C14 4.33 13.33 5 12.5 5S11 4.33 11 3.5 11.67 2 12.5 2 14 2.67 14 3.5M8.5 5C7.67 5 7 5.67 7 6.5S7.67 8 8.5 8 10 7.33 10 6.5 9.33 5 8.5 5M14 12L13.22 9.75H16.18L18.34 8.67C18.71 8.5 18.86 8.04 18.67 7.67C18.5 7.3 18.04 7.14 17.67 7.33L16.85 7.74L16.36 6.9C16.07 6.25 15.36 5.88 14.66 6.04L12.19 6.57C11.5 6.72 11 7.35 11 8.07V8.77L8.57 10.39H8.58C8.5 10.46 8.39 10.55 8.33 10.67L7.44 12.44L5.66 13.33C5.29 13.5 5.14 13.97 5.33 14.34C5.46 14.6 5.73 14.75 6 14.75C6.11 14.75 6.23 14.73 6.34 14.67L8.56 13.56L9.6 11.5L11 13C10 16 3 20 3 20S7 22 12 22 21 20 21 20 16 16 14 12M16.85 11.09L16.53 11.25H15.33L15.39 11.41C15.91 12.44 16.67 13.5 17.5 14.44L16.97 11.03L16.85 11.09Z" />',
            items = {
                {
                    label = 'Baile <span>[/nearbydance dance]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dance')
                    end
                },
                {
                    label = 'Baile 2 <span>[/nearbydance dance2]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dance2')
                    end
                },
                {
                    label = 'Baile 3 <span>[/nearbydance dance3]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dance3')
                    end
                },
                {
                    label = 'Baile 4 <span>[/nearbydance dance4]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dance4')
                    end
                },
                {
                    label = 'Baile 5 <span>[/nearbydance dance5]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dance5')
                    end
                },
                {
                    label = 'Baile 6 <span>[/nearbydance dance6]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dance6')
                    end
                },
                {
                    label = 'Baile 7 <span>[/nearbydance dance7]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dance7')
                    end
                },
                {
                    label = 'Baile 8 <span>[/nearbydance dance8]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dance8')
                    end
                },
                {
                    label = 'Baile 9 <span>[/nearbydance dance9]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dance9')
                    end
                },
                {
                    label = 'Baile 10 <span>[/nearbydance dance10]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dance10')
                    end
                },
                {
                    label = 'Baile 11 <span>[/nearbydance dance11]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dance11')
                    end
                },
                {
                    label = 'Baile 12 <span>[/nearbydance dance12]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dance12')
                    end
                },
                {
                    label = 'Baile 13 <span>[/nearbydance dance13]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dance13')
                    end
                },
                {
                    label = 'Baile con caballito <span>[/nearbydance dancehorse]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancehorse')
                    end
                },
                {
                    label = 'Baile con caballito 2 <span>[/nearbydance dancehorse2]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancehorse2')
                    end
                },
                {
                    label = 'Baile con caballito 3 <span>[/nearbydance dancehorse3]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancehorse3')
                    end
                },
                {
                    label = 'Baile de palos <span>[/nearbydance danceglowstick]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance danceglowstick')
                    end
                },
                {
                    label = 'Baile de palos 2 <span>[/nearbydance danceglowstick2]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance danceglowstick2')
                    end
                },
                {
                    label = 'Baile de palos 3 <span>[/nearbydance danceglowstick3]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance danceglowstick3')
                    end
                },
                {
                    label = 'Baile de barra <span>[/nearbydance dancebar]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancebar')
                    end
                },
                {
                    label = 'Baile en coche <span>[/nearbydance dancecar]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancecar')
                    end
                },
                {
                    label = 'Baile en coche 2 <span>[/nearbydance dancecar2]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancecar2')
                    end
                },
                {
                    label = 'Baile en coche 3 <span>[/nearbydance dancecar3]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancecar3')
                    end
                },
                {
                    label = 'Baile enérgico <span>[/nearbydance danceupper]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance danceupper')
                    end
                },
                {
                    label = 'Baile enérgico 2 <span>[/nearbydance danceupper2]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance danceupper2')
                    end
                },
                {
                    label = 'Baile F <span>[/nearbydance dancef]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancef')
                    end
                },
                {
                    label = 'Baile F2 <span>[/nearbydance dancef2]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancef2')
                    end
                },
                {
                    label = 'Baile F3 <span>[/nearbydance dancef3]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancef3')
                    end
                },
                {
                    label = 'Baile F4 <span>[/nearbydance dancef4]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancef4')
                    end
                },
                {
                    label = 'Baile F5 <span>[/nearbydance dancef5]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancef5')
                    end
                },
                {
                    label = 'Baile F6 <span>[/nearbydance dancef6]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancef6')
                    end
                },
                {
                    label = 'Baile F7 <span>[/nearbydance dancef7]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancef7')
                    end
                },
                {
                    label = 'Baile F8 <span>[/nearbydance dancef8]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancef8')
                    end
                },
                {
                    label = 'Baile F9 <span>[/nearbydance dancef9]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancef9')
                    end
                },
                {
                    label = 'Baile F10 <span>[/nearbydance dancef10]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancef10')
                    end
                },
                {
                    label = 'Baile F11 <span>[/nearbydance dancef11]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancef11')
                    end
                },
                {
                    label = 'Baile lento <span>[/nearbydance danceslow]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance danceslow')
                    end
                },
                {
                    label = 'Baile lento 2 <span>[/nearbydance danceslow2]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance danceslow2')
                    end
                },
                {
                    label = 'Baile lento 3 <span>[/nearbydance danceslow3]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance danceslow3')
                    end
                },
                {
                    label = 'Baile lento 4 <span>[/nearbydance danceslow4]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance danceslow4')
                    end
                },
                {
                    label = 'Baile tímido <span>[/nearbydance danceshy]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance danceshy')
                    end
                },
                {
                    label = 'Baile tímido 2 <span>[/nearbydance danceshy2]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance danceshy2')
                    end
                },
                {
                    label = 'Baile tímido 3 <span>[/nearbydance danceshy3]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance danceshy3')
                    end
                },
                {
                    label = 'Baile tonto <span>[/nearbydance dancesilly]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancesilly')
                    end
                },
                {
                    label = 'Baile tonto 2 <span>[/nearbydance dancesilly2]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancesilly2')
                    end
                },
                {
                    label = 'Baile tonto 3 <span>[/nearbydance dancesilly3]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancesilly3')
                    end
                },
                {
                    label = 'Baile tonto 4 <span>[/nearbydance dancesilly4]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancesilly4')
                    end
                },
                {
                    label = 'Baile tonto 5 <span>[/nearbydance dancesilly5]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancesilly5')
                    end
                },
                {
                    label = 'Baile tonto 6 <span>[/nearbydance dancesilly6]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancesilly6')
                    end
                },
                {
                    label = 'Baile tonto 7 <span>[/nearbydance dancesilly7]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancesilly7')
                    end
                },
                {
                    label = 'Baile tonto 8 <span>[/nearbydance dancesilly8]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancesilly8')
                    end
                },
                {
                    label = 'Baile tonto 9 <span>[/nearbydance dancesilly9]</span>',
                    action = function () 
                        ExecuteCommand('nearbydance dancesilly9')
                    end
                },
            }
        },
        {
            name = 'objects',
            icon = '<path d="M3,3H21V7H3V3M4,8H20V21H4V8M9.5,11A0.5,0.5 0 0,0 9,11.5V13H15V11.5A0.5,0.5 0 0,0 14.5,11H9.5Z" />',
            items = {
                {
                    label = 'Beg <span>[/e beg]</span>',
                    action = function()
                        ExecuteCommand('e beg')
                    end
                },
                {
                    label = 'Brief 3 <span>[/e brief3]</span>',
                    action = function()
                        ExecuteCommand('e brief3')
                    end
                },
                {
                    label = 'Café <span>[/e coffee]</span>',
                    action = function()
                        ExecuteCommand('e coffee')
                    end
                },
                {
                    label = 'Caja <span>[/e box]</span>',
                    action = function()
                        ExecuteCommand('e box')
                    end
                },
                {
                    label = 'Camara <span>[/e camera]</span>',
                    action = function()
                        ExecuteCommand('e camera')
                    end
                },
                {
                    label = 'Cerveza <span>[/e beer]</span>',
                    action = function()
                        ExecuteCommand('e beer')
                    end
                },
                {
                    label = 'Champang <span>[/e champagne]</span>',
                    action = function()
                        ExecuteCommand('e champagne')
                    end
                },
                {
                    label = 'Cigarro <span>[/e cig]</span>',
                    action = function()
                        ExecuteCommand('e cig')
                    end
                },
                {
                    label = 'Cigarro 2 <span>[/e cigar]</span>',
                    action = function()
                        ExecuteCommand('e cigar')
                    end
                },
                {
                    label = 'Cigarro 3 <span>[/e cigar2]</span>',
                    action = function()
                        ExecuteCommand('e cigar2')
                    end
                },
                {
                    label = 'Cigarro en la boca <span>[/e joint]</span>',
                    action = function()
                        ExecuteCommand('e joint')
                    end
                },
                {
                    label = 'Comer un sandwich <span>[/e eatsandwich]</span>',
                    action = function()
                        ExecuteCommand('e eatsandwich')
                    end
                },
                {
                    label = 'Donut <span>[/e donut]</span>',
                    action = function()
                        ExecuteCommand('e donut')
                    end
                },
                {
                    label = 'Ego bar <span>[/e egobar]</span>',
                    action = function()
                        ExecuteCommand('e egobar')
                    end
                },
                {
                    label = 'Flauta <span>[/e flute]</span>',
                    action = function()
                        ExecuteCommand('e flute')
                    end
                },
                {
                    label = 'Fumar 2 <span>[/e smoke2]</span>',
                    action = function()
                        ExecuteCommand('e smoke2')
                    end
                },
                {
                    label = 'Fumar 3 <span>[/e smoke3]</span>',
                    action = function()
                        ExecuteCommand('e smoke3')
                    end
                },
                {
                    label = 'Fumar 4 <span>[/e smoke4]</span>',
                    action = function()
                        ExecuteCommand('e smoke4')
                    end
                },
                {
                    label = 'Fumar un puro <span>[/e smokecigar]</span>',
                    action = function()
                        ExecuteCommand('e smokecigar')
                    end
                },
                {
                    label = 'Guitarra <span>[/e guitar]</span>',
                    action = function()
                        ExecuteCommand('e guitar')
                    end
                },
                {
                    label = 'Guitarra 2 <span>[/e guitar2]</span>',
                    action = function()
                        ExecuteCommand('e guitar2')
                    end
                },
                {
                    label = 'Guitarra eléctrica <span>[/e guitarelectric]</span>',
                    action = function()
                        ExecuteCommand('e guitarelectric')
                    end
                },
                {
                    label = 'Guitarra eléctrica 2 <span>[/e guitarelectric2]</span>',
                    action = function()
                        ExecuteCommand('e guitarelectric2')
                    end
                },
                {
                    label = 'Hamburguesa <span>[/e burger]</span>',
                    action = function()
                        ExecuteCommand('e burger')
                    end
                },
                {
                    label = 'Lanzar billetes <span>[/e makeitrain]</span>',
                    action = function()
                        ExecuteCommand('e makeitrain')
                    end
                },
                {
                    label = 'Libro <span>[/e book]</span>',
                    action = function()
                        ExecuteCommand('e book')
                    end
                },
                {
                    label = 'Llamada de teléfono <span>[/e phonecall]</span>',
                    action = function()
                        ExecuteCommand('e phonecall')
                    end
                },
                {
                    label = 'Maleta <span>[/e suitcase]</span>',
                    action = function()
                        ExecuteCommand('e suitcase')
                    end
                },
                {
                    label = 'Maleta 2 <span>[/e suitcase2]</span>',
                    action = function()
                        ExecuteCommand('e suitcase2')
                    end
                },
                {
                    label = 'Mapa <span>[/e map]</span>',
                    action = function()
                        ExecuteCommand('e map')
                    end
                },
                {
                    label = 'Mochila <span>[/e backpack]</span>',
                    action = function()
                        ExecuteCommand('e backpack')
                    end
                },
                {
                    label = 'Mugshot <span>[/e mugshot]</span>',
                    action = function()
                        ExecuteCommand('e mugshot')
                    end
                },
                {
                    label = 'Osito <span>[/e teddy]</span>',
                    action = function()
                        ExecuteCommand('e teddy')
                    end
                },
                {
                    label = 'Paraguas <span>[/e umbrella]</span>',
                    action = function()
                        ExecuteCommand('e umbrella')
                    end
                },
                {
                    label = 'Pintar con spray <span>[/e spray]</span>',
                    action = function()
                        ExecuteCommand('e spray')
                    end
                },
                {
                    label = 'Pipa de fumar <span>[/e bong]</span>',
                    action = function()
                        ExecuteCommand('e bong')
                    end
                },
                {
                    label = 'Ramo de flores <span>[/e bouquet]</span>',
                    action = function()
                        ExecuteCommand('e bouquet')
                    end
                },
                {
                    label = 'Rosa <span>[/e rose]</span>',
                    action = function()
                        ExecuteCommand('e rose')
                    end
                },
                {
                    label = 'Sandwich <span>[/e sandwich]</span>',
                    action = function()
                        ExecuteCommand('e sandwich')
                    end
                },
                {
                    label = 'Soda <span>[/e soda]</span>',
                    action = function()
                        ExecuteCommand('e soda')
                    end
                },
                {
                    label = 'Taza <span>[/e cup]</span>',
                    action = function()
                        ExecuteCommand('e cup')
                    end
                },
                {
                    label = 'Teléfono <span>[/e phone]</span>',
                    action = function()
                        ExecuteCommand('e phone')
                    end
                },
                {
                    label = 'Tirar champang <span>[/e champagnespray]</span>',
                    action = function()
                        ExecuteCommand('e champagnespray')
                    end
                },
                {
                    label = 'Vino <span>[/e wine]</span>',
                    action = function()
                        ExecuteCommand('e wine')
                    end
                },
                {
                    label = 'Whiskey <span>[/e whiskey]</span>',
                    action = function()
                        ExecuteCommand('e whiskey')
                    end
                },
            }
        },
        {
            name = 'shared',
            icon = '<path d="M16 17V19H2V17S2 13 9 13 16 17 16 17M12.5 7.5A3.5 3.5 0 1 0 9 11A3.5 3.5 0 0 0 12.5 7.5M15.94 13A5.32 5.32 0 0 1 18 17V19H22V17S22 13.37 15.94 13M15 4A3.39 3.39 0 0 0 13.07 4.59A5 5 0 0 1 13.07 10.41A3.39 3.39 0 0 0 15 11A3.5 3.5 0 0 0 15 4Z" />',
            items = {
                {
                    label = 'Abrazo <span>[/nearby hug]</span>',
                    action = function()
                        ExecuteCommand('nearby hug')
                    end
                },
                {
                    label = 'Abrazo 2 <span>[/nearby hug2]</span>',
                    action = function()
                        ExecuteCommand('nearby hug2')
                    end
                },
                {
                    label = 'Apretón de manos <span>[/nearby handshake]</span>',
                    action = function()
                        ExecuteCommand('nearby handshake')
                    end
                },
                {
                    label = 'Apretón de manos 2 <span>[/nearby handshake2]</span>',
                    action = function()
                        ExecuteCommand('nearby handshake2')
                    end
                },
                {
                    label = 'Apuntar <span>[/nearby stickup]</span>',
                    action = function()
                        ExecuteCommand('nearby stickup')
                    end
                },
                {
                    label = 'Baseball <span>[/nearby baseball]</span>',
                    action = function()
                        ExecuteCommand('nearby baseball')
                    end
                },
                {
                    label = 'Baseball 2 <span>[/nearby baseballthrow]</span>',
                    action = function()
                        ExecuteCommand('nearby baseballthrow')
                    end
                },
                {
                    label = 'Dar cabezazo <span>[/nearby headbutt]</span>',
                    action = function()
                        ExecuteCommand('nearby headbutt')
                    end
                },
                {
                    label = 'Dar manotazo <span>[/nearby slap]</span>',
                    action = function()
                        ExecuteCommand('nearby slap')
                    end
                },
                {
                    label = 'Dar manotazo 2 <span>[/nearby slap2]</span>',
                    action = function()
                        ExecuteCommand('nearby slap2')
                    end
                },
                {
                    label = 'Dar puñetazo <span>[/nearby punch]</span>',
                    action = function()
                        ExecuteCommand('nearby punch')
                    end
                },
                {
                    label = 'Give <span>[/nearby give]</span>',
                    action = function()
                        ExecuteCommand('nearby give')
                    end
                },
                {
                    label = 'Give 2 <span>[/nearby give2]</span>',
                    action = function()
                        ExecuteCommand('nearby give2')
                    end
                },
                {
                    label = 'Palmada en la espalda <span>[/nearby bro]</span>',
                    action = function()
                        ExecuteCommand('nearby bro')
                    end
                },
                {
                    label = 'Palmada en la espalda 2 <span>[/nearby bro2]</span>',
                    action = function()
                        ExecuteCommand('nearby bro2')
                    end
                },
                {
                    label = 'Recibir cabezazo <span>[/nearby headbutted]</span>',
                    action = function()
                        ExecuteCommand('nearby headbutted')
                    end
                },
                {
                    label = 'Recibir manotazo <span>[/nearby slapped]</span>',
                    action = function()
                        ExecuteCommand('nearby slapped')
                    end
                },
                {
                    label = 'Recibir manotazo 2 <span>[/nearby slapped2]</span>',
                    action = function()
                        ExecuteCommand('nearby slapped2')
                    end
                },
                {
                    label = 'Recibir puñetazo <span>[/nearby punched]</span>',
                    action = function()
                        ExecuteCommand('nearby punched')
                    end
                },
                {
                    label = 'Ser amenazado <span>[/nearby stickupscared]</span>',
                    action = function()
                        ExecuteCommand('nearby stickupscared')
                    end
                },
            }
        },
        {
            name = 'dog',
            icon = '<path d="M19,3L15,7L18,10L19,9L20,10L22,8L19,5V3M3,7L2,8L5,11V14L4,15V21H6V18L8,15H15V21H17V11L14,8L13,9H5L3,7Z" />',
            items = {
                {
                    label = '(Perro) Alerta <span>[/e dog6]</span>',
                    action = function()
                        ExecuteCommand('e dog6')
                    end
                },
                {
                    label = '(Perro) Dar la pata <span>[/e dog13]</span>',
                    action = function()
                        ExecuteCommand('e dog13')
                    end
                },
                {
                    label = '(Perro) Dormirse <span>[/e dog5]</span>',
                    action = function()
                        ExecuteCommand('e dog5')
                    end
                },
                {
                    label = '(Perro) Indicar <span>[/e dog10]</span>',
                    action = function()
                        ExecuteCommand('e dog10')
                    end
                },
                {
                    label = '(Perro) Ladrar <span>[/e dog]</span>',
                    action = function()
                        ExecuteCommand('e dog')
                    end
                },
                {
                    label = '(Perro) Ladrar 2 <span>[/e dog7]</span>',
                    action = function()
                        ExecuteCommand('e dog7')
                    end
                },
                {
                    label = '(Perro) Levantarse <span>[/e dog4]</span>',
                    action = function()
                        ExecuteCommand('e dog4')
                    end
                },
                {
                    label = '(Perro) Provocar <span>[/e dog11]</span>',
                    action = function()
                        ExecuteCommand('e dog11')
                    end
                },
                {
                    label = '(Perro) Rascarse sentado <span>[/e dog9]</span>',
                    action = function()
                        ExecuteCommand('e dog9')
                    end
                },
                {
                    label = '(Perro) Recibir caricias <span>[/e dog14]</span>',
                    action = function()
                        ExecuteCommand('e dog14')
                    end
                },
                {
                    label = '(Perro) Sentarse <span>[/e dog2]</span>',
                    action = function()
                        ExecuteCommand('e dog2')
                    end
                },
                {
                    label = '(Perro) Sentarse 2 <span>[/e dog8]</span>',
                    action = function()
                        ExecuteCommand('e dog8')
                    end
                },
                {
                    label = '(Perro) Sentarse y tumbarse <span>[/e dog3]</span>',
                    action = function()
                        ExecuteCommand('e dog3')
                    end
                },
                {
                    label = '(Perro) Suplicar <span>[/e dog12]</span>',
                    action = function()
                        ExecuteCommand('e dog12')
                    end
                },
            }
        },
        {
            name = 'sit',
            icon = '<path d="M4,18V21H7V18H17V21H20V15H4V18M19,10H22V13H19V10M2,10H5V13H2V10M17,13H7V5A2,2 0 0,1 9,3H15A2,2 0 0,1 17,5V13Z" />',
            items = {
                
                {
                    label = 'Sentarse <span>[/e sit]</span>',
                    action = function()
                        ExecuteCommand('e sit')
                    end
                },
                {
                    label = 'Sentarse 2 <span>[/e sit2]</span>',
                    action = function()
                        ExecuteCommand('e sit2')
                    end
                },
                {
                    label = 'Sentarse 3 <span>[/e sit5]</span>',
                    action = function()
                        ExecuteCommand('e sit5')
                    end
                },
                {
                    label = 'Sentarse 4 <span>[/e sit6]</span>',
                    action = function()
                        ExecuteCommand('e sit6')
                    end
                },
                {
                    label = 'Sentarse 5 <span>[/e sit8]</span>',
                    action = function()
                        ExecuteCommand('e sit8')
                    end
                },
                {
                    label = 'Sentarse 6 <span>[/e sit9]</span>',
                    action = function()
                        ExecuteCommand('e sit9')
                    end
                },
                {
                    label = 'Sentarse bebido <span>[/e sitdrunk]</span>',
                    action = function()
                        ExecuteCommand('e sitdrunk')
                    end
                },
                {
                    label = 'Sentarse con el móvil <span>[/e sitchair7]</span>',
                    action = function()
                        ExecuteCommand('e sitchair7')
                    end
                },
                {
                    label = 'Sentarse con miedo <span>[/e sitscared]</span>',
                    action = function()
                        ExecuteCommand('e sitscared')
                    end
                },
                {
                    label = 'Sentarse con miedo 2 <span>[/e sitscared2]</span>',
                    action = function()
                        ExecuteCommand('e sitscared2')
                    end
                },
                {
                    label = 'Sentarse con miedo 3 <span>[/e sitscared3]</span>',
                    action = function()
                        ExecuteCommand('e sitscared3')
                    end
                },
                {
                    label = 'Sentarse de lado <span>[/e sit4]</span>',
                    action = function()
                        ExecuteCommand('e sit4')
                    end
                },
                {
                    label = 'Sentarse descansando <span>[/e sitfloor3]</span>',
                    action = function()
                        ExecuteCommand('e sitfloor3')
                    end
                },
                {
                    label = 'Sentarse echado para atrás <span>[/e sitchair5]</span>',
                    action = function()
                        ExecuteCommand('e sitchair5')
                    end
                },
                {
                    label = 'Sentarse echado para atrás 2 <span>[/e sitchair6]</span>',
                    action = function()
                        ExecuteCommand('e sitchair6')
                    end
                },
                {
                    label = 'Sentarse en el borde <span>[/e sitfloor]</span>',
                    action = function()
                        ExecuteCommand('e sitfloor')
                    end
                },
                {
                    label = 'Sentarse en escalones <span>[/e sitfloor2]</span>',
                    action = function()
                        ExecuteCommand('e sitfloor2')
                    end
                },
                {
                    label = 'Sentarse en silla <span>[/e sitchair]</span>',
                    action = function()
                        ExecuteCommand('e sitchair')
                    end
                },
                {
                    label = 'Sentarse en silla 2 <span>[/e sitchair2]</span>',
                    action = function()
                        ExecuteCommand('e sitchair2')
                    end
                },
                {
                    label = 'Sentarse en silla 3 <span>[/e sitchair3]</span>',
                    action = function()
                        ExecuteCommand('e sitchair3')
                    end
                },
                {
                    label = 'Sentarse en silla estirado <span>[/e sitfloor4]</span>',
                    action = function()
                        ExecuteCommand('e sitfloor4')
                    end
                },
                {
                    label = 'Sentarse en un sillón <span>[/e sitfloor5]</span>',
                    action = function()
                        ExecuteCommand('e sitfloor5')
                    end
                },
                {
                    label = 'Sentarse estirado <span>[/e sit3]</span>',
                    action = function()
                        ExecuteCommand('e sit3')
                    end
                },
                {
                    label = 'Sentarse impaciente <span>[/e sitchair4]</span>',
                    action = function()
                        ExecuteCommand('e sitchair4')
                    end
                },
                {
                    label = 'Sentarse junto a la silla <span>[/e sitchairside]</span>',
                    action = function()
                        ExecuteCommand('e sitchairside')
                    end
                },
                {
                    label = 'Sentarse preocupado <span>[/e sit7]</span>',
                    action = function()
                        ExecuteCommand('e sit7')
                    end
                },
                {
                    label = 'Sentarse triste <span>[/e sitsad]</span>',
                    action = function()
                        ExecuteCommand('e sitsad')
                    end
                },
                {
                    label = 'Sit lean <span>[/e sitlean]</span>',
                    action = function()
                        ExecuteCommand('e sitlean')
                    end
                },
            }
        },
        {
            name = 'sport',
            icon = '<path d="M2.34,14.63C2.94,14.41 3.56,14.3 4.22,14.3C5.56,14.3 6.73,14.72 7.73,15.56L4.59,18.7C3.53,17.5 2.78,16.13 2.34,14.63M15.56,9.8C17.53,11.27 19.66,11.63 21.94,10.88C21.97,11.09 22,11.47 22,12C22,13.03 21.75,14.18 21.28,15.45C20.81,16.71 20.23,17.73 19.55,18.5L13.22,12.19L15.56,9.8M8.77,16.64C9.83,18.17 10.05,19.84 9.42,21.66C8,21.25 6.73,20.61 5.67,19.73L8.77,16.64M12.19,13.22L18.5,19.55C16.33,21.45 13.78,22.25 10.88,21.94C11.09,21.28 11.2,20.56 11.2,19.78C11.2,19.16 11.06,18.43 10.78,17.6C10.5,16.77 10.17,16.09 9.8,15.56L12.19,13.22M8.81,14.5C7.88,13.67 6.8,13.15 5.58,12.91C4.36,12.68 3.19,12.75 2.06,13.13C2.03,12.91 2,12.53 2,12C2,10.97 2.25,9.82 2.72,8.55C3.19,7.29 3.77,6.27 4.45,5.5L11.11,12.19L8.81,14.5M15.56,7.73C14.22,6.08 13.91,4.28 14.63,2.34C15.25,2.5 15.96,2.8 16.76,3.26C17.55,3.71 18.2,4.16 18.7,4.59L15.56,7.73M21.66,9.38C21.06,9.59 20.44,9.7 19.78,9.7C18.69,9.7 17.64,9.38 16.64,8.72L19.73,5.67C20.61,6.77 21.25,8 21.66,9.38M12.19,11.11L5.5,4.45C7.67,2.55 10.22,1.75 13.13,2.06C12.91,2.72 12.8,3.44 12.8,4.22C12.8,4.94 12.96,5.75 13.29,6.66C13.62,7.56 14,8.28 14.5,8.81L12.19,11.11Z" />',
            items = {
                {
                    label = 'Abdominales <span>[/e situp]</span>',
                    action = function()
                        ExecuteCommand('e situp')
                    end
                },
                {
                    label = 'Beisbol <span>[/e slugger]</span>',
                    action = function()
                        ExecuteCommand('e slugger')
                    end
                },
                {
                    label = 'Boxear <span>[/e boxing]</span>',
                    action = function()
                        ExecuteCommand('e boxing')
                    end
                },
                {
                    label = 'Boxear 2 <span>[/e boxing2]</span>',
                    action = function()
                        ExecuteCommand('e boxing2')
                    end
                },
                {
                    label = 'Calentar <span>[/e stretch]</span>',
                    action = function()
                        ExecuteCommand('e stretch')
                    end
                },
                {
                    label = 'Calentar 2 <span>[/e stretch2]</span>',
                    action = function()
                        ExecuteCommand('e stretch2')
                    end
                },
                {
                    label = 'Calentar 3 <span>[/e stretch3]</span>',
                    action = function()
                        ExecuteCommand('e stretch3')
                    end
                },
                {
                    label = 'Calentar 4 <span>[/e stretch4]</span>',
                    action = function()
                        ExecuteCommand('e stretch4')
                    end
                },
                {
                    label = 'Corredor <span>[/e jog]</span>',
                    action = function()
                        ExecuteCommand('e jog')
                    end
                },
                {
                    label = 'Corredor 2 <span>[/e jog2]</span>',
                    action = function()
                        ExecuteCommand('e jog2')
                    end
                },
                {
                    label = 'Corredor 3 <span>[/e jog3]</span>',
                    action = function()
                        ExecuteCommand('e jog3')
                    end
                },
                {
                    label = 'Corredor 4 <span>[/e jog4]</span>',
                    action = function()
                        ExecuteCommand('e jog4')
                    end
                },
                {
                    label = 'Corredor 5 <span>[/e jog5]</span>',
                    action = function()
                        ExecuteCommand('e jog5')
                    end
                },
                {
                    label = 'Enseñar musculos <span>[/e flex]</span>',
                    action = function()
                        ExecuteCommand('e flex')
                    end
                },
                {
                    label = 'Excursionismo <span>[/e hiking]</span>',
                    action = function()
                        ExecuteCommand('e hiking')
                    end
                },
                {
                    label = 'Flexiones <span>[/e pushup]</span>',
                    action = function()
                        ExecuteCommand('e pushup')
                    end
                },
                {
                    label = 'Golf <span>[/e golfswing]</span>',
                    action = function()
                        ExecuteCommand('e golfswing')
                    end
                },
                {
                    label = 'Hacer dominadas <span>[/e chinup]</span>',
                    action = function()
                        ExecuteCommand('e chinup')
                    end
                },
                {
                    label = 'Karate <span>[/e karate]</span>',
                    action = function()
                        ExecuteCommand('e karate')
                    end
                },
                {
                    label = 'Karate 2 <span>[/e karate2]</span>',
                    action = function()
                        ExecuteCommand('e karate2')
                    end
                },
                {
                    label = 'Namaste <span>[/e namaste]</span>',
                    action = function()
                        ExecuteCommand('e namaste')
                    end
                },
                {
                    label = 'Meditar <span>[/e meditate]</span>',
                    action = function()
                        ExecuteCommand('e meditate')
                    end
                },
                {
                    label = 'Meditar 2 <span>[/e meditate2]</span>',
                    action = function()
                        ExecuteCommand('e meditate2')
                    end
                },
                {
                    label = 'Meditar 3 <span>[/e meditate3]</span>',
                    action = function()
                        ExecuteCommand('e meditate3')
                    end
                },
                {
                    label = 'Pescar <span>[/e fishing]</span>',
                    action = function()
                        ExecuteCommand('e fishing')
                    end
                },
                {
                    label = 'Prepararse para pelear <span>[/e fightme]</span>',
                    action = function()
                        ExecuteCommand('e fightme')
                    end
                },
                {
                    label = 'Prepararse para pelear 2 <span>[/e fightme2]</span>',
                    action = function()
                        ExecuteCommand('e fightme2')
                    end
                },
                {
                    label = 'Saltos de tijera <span>[/e jumpingjacks]</span>',
                    action = function()
                        ExecuteCommand('e jumpingjacks')
                    end
                },
                {
                    label = 'Tennis <span>[/e tennis]</span>',
                    action = function()
                        ExecuteCommand('e tennis')
                    end
                },
                {
                    label = 'Voltereta <span>[/e flip]</span>',
                    action = function()
                        ExecuteCommand('e flip')
                    end
                },
                {
                    label = 'Voltereta 2 <span>[/e flip2]</span>',
                    action = function()
                        ExecuteCommand('e flip2')
                    end
                },
                {
                    label = 'Yoga <span>[/e yoga]</span>',
                    action = function()
                        ExecuteCommand('e yoga')
                    end
                },
            }
        },
        {
            name = 'salute',
            icon = '<path d="M1.5,4V5.5C1.5,9.65 3.71,13.28 7,15.3V20H22V18C22,15.34 16.67,14 14,14C14,14 13.83,14 13.75,14C9,14 5,10 5,5.5V4M14,4A4,4 0 0,0 10,8A4,4 0 0,0 14,12A4,4 0 0,0 18,8A4,4 0 0,0 14,4Z" />',
            items = {
                {
                    label = 'Abrazo <span>[/e hug]</span>',
                    action = function()
                        ExecuteCommand('e hug')
                    end
                },
                {
                    label = 'Abrazo 2 <span>[/e hug2]</span>',
                    action = function()
                        ExecuteCommand('e hug2')
                    end
                },
                {
                    label = 'Dar la mano <span>[/e handshake]</span>',
                    action = function()
                        ExecuteCommand('e handshake')
                    end
                },
                {
                    label = 'Dar la mano 2 <span>[/e handshake2]</span>',
                    action = function()
                        ExecuteCommand('e handshake2')
                    end
                },
                {
                    label = 'Saludar <span>[/e wave7]</span>',
                    action = function()
                        ExecuteCommand('e wave7')
                    end
                },
                {
                    label = 'Saludar 2 <span>[/e wave9]</span>',
                    action = function()
                        ExecuteCommand('e wave9')
                    end
                },
                {
                    label = 'Saludar al público <span>[/e wave2]</span>',
                    action = function()
                        ExecuteCommand('e wave2')
                    end
                },
                {
                    label = 'Saludo ganster <span>[/e gangsign]</span>',
                    action = function()
                        ExecuteCommand('e gangsign')
                    end
                },
                {
                    label = 'Saludo ganster 2 <span>[/e gangsign2]</span>',
                    action = function()
                        ExecuteCommand('e gangsign2')
                    end
                },
                {
                    label = 'Saludar hacia arriba <span>[/e wave4]</span>',
                    action = function()
                        ExecuteCommand('e wave4')
                    end
                },
                {
                    label = 'Saludar manos arriba 2 <span>[/e wave5]</span>',
                    action = function()
                        ExecuteCommand('e wave5')
                    end
                },
                {
                    label = 'Saludar mano arriba <span>[/e wave3]</span>',
                    action = function()
                        ExecuteCommand('e wave3')
                    end
                },
                {
                    label = 'Saludar mano arriba 2 <span>[/e wave]</span>',
                    action = function()
                        ExecuteCommand('e wave')
                    end
                },
                {
                    label = 'Saludar mano arriba 3 <span>[/e wave8]</span>',
                    action = function()
                        ExecuteCommand('e wave8')
                    end
                },
                {
                    label = 'Saludo metal <span>[/e metal]</span>',
                    action = function()
                        ExecuteCommand('e metal')
                    end
                },
                {
                    label = 'Saludo militar <span>[/e salute]</span>',
                    action = function()
                        ExecuteCommand('e salute')
                    end
                },
                {
                    label = 'Saludo militar 2 <span>[/e salute2]</span>',
                    action = function()
                        ExecuteCommand('e salute2')
                    end
                },
                {
                    label = 'Saludo militar 3 <span>[/e salute3]</span>',
                    action = function()
                        ExecuteCommand('e salute3')
                    end
                },
            }
        },
        {
            name = 'lean',
            icon = '<path d="M11,7A2,2 0 0,0 9,9V17H11V13H13V17H15V9A2,2 0 0,0 13,7H11M11,9H13V11H11V9Z" />',
            items = {
                {
                    label = 'Apoyarse <span>[/e lean]</span>',
                    action = function()
                        ExecuteCommand('e lean')
                    end
                },
                {
                    label = 'Apoyarse 2 <span>[/e lean2]</span>',
                    action = function()
                        ExecuteCommand('e lean2')
                    end
                },
                {
                    label = 'Apoyarse 3 <span>[/e lean3]</span>',
                    action = function()
                        ExecuteCommand('e lean3')
                    end
                },
                {
                    label = 'Apoyarse 4 <span>[/e lean4]</span>',
                    action = function()
                        ExecuteCommand('e lean4')
                    end
                },
                {
                    label = 'Apoyarse 5 <span>[/e lean5]</span>',
                    action = function()
                        ExecuteCommand('e lean5')
                    end
                },
                {
                    label = 'Apoyarse 6 <span>[/e leanflirt]</span>',
                    action = function()
                        ExecuteCommand('e leanflirt')
                    end
                },
                {
                    label = 'Apoyarse con un café <span>[/e leancoffee]</span>',
                    action = function()
                        ExecuteCommand('e leancoffee')
                    end
                },
                {
                    label = 'Apoyarse con una cerveza <span>[/e leanbeer]</span>',
                    action = function()
                        ExecuteCommand('e leanbeer')
                    end
                },
                {
                    label = 'Apoyarse de espaldas <span>[/e leanbar4]</span>',
                    action = function()
                        ExecuteCommand('e leanbar4')
                    end
                },
                {
                    label = 'Apoyarse en alguien <span>[/e leanside]</span>',
                    action = function()
                        ExecuteCommand('e leanside')
                    end
                },
                {
                    label = 'Apoyarse en alguien 2 <span>[/e leanside5]</span>',
                    action = function()
                        ExecuteCommand('e leanside5')
                    end
                },
                {
                    label = 'Apoyarse en alguien y pulgar arriba <span>[/e leanside6]</span>',
                    action = function()
                        ExecuteCommand('e leanside6')
                    end
                },
                {
                    label = 'Apoyarse en barandilla <span>[/e leanbar2]</span>',
                    action = function()
                        ExecuteCommand('e leanbar2')
                    end
                },
                {
                    label = 'Apoyarse en barra <span>[/e leanbar]</span>',
                    action = function()
                        ExecuteCommand('e leanbar')
                    end
                },
                {
                    label = 'Apoyarse en barra 2 <span>[/e leanbar3]</span>',
                    action = function()
                        ExecuteCommand('e leanbar3')
                    end
                },
                {
                    label = 'Apoyarse en barra 3 <span>[/e leanside3]</span>',
                    action = function()
                        ExecuteCommand('e leanside3')
                    end
                },
                {
                    label = 'Apoyarse en barra 4 <span>[/e leanside4]</span>',
                    action = function()
                        ExecuteCommand('e leanside4')
                    end
                },
                {
                    label = 'Apoyarse en la pared <span>[/e leanside2]</span>',
                    action = function()
                        ExecuteCommand('e leanside2')
                    end
                },
                {
                    label = 'Apoyarse y hablar por el teléfono <span>[/e leanphone2]</span>',
                    action = function()
                        ExecuteCommand('e leanphone2')
                    end
                },
                {
                    label = 'Apoyarse y fumar <span>[/e leansmoke]</span>',
                    action = function()
                        ExecuteCommand('e leansmoke')
                    end
                },
                {
                    label = 'Apoyarse y jugar con el móvil <span>[/e leanphone]</span>',
                    action = function()
                        ExecuteCommand('e leanphone')
                    end
                },
            }
        },
        {
            name = 'talk',
            icon = '<path d="M9,5A4,4 0 0,1 13,9A4,4 0 0,1 9,13A4,4 0 0,1 5,9A4,4 0 0,1 9,5M9,15C11.67,15 17,16.34 17,19V21H1V19C1,16.34 6.33,15 9,15M16.76,5.36C18.78,7.56 18.78,10.61 16.76,12.63L15.08,10.94C15.92,9.76 15.92,8.23 15.08,7.05L16.76,5.36M20.07,2C24,6.05 23.97,12.11 20.07,16L18.44,14.37C21.21,11.19 21.21,6.65 18.44,3.63L20.07,2Z" />',
            items = {
                {
                    label = 'Amenazar <span>[/e cutthroat]</span>',
                    action = function()
                        ExecuteCommand('e cutthroat')
                    end
                },
                {
                    label = 'Amenazar 2 <span>[/e cutthroat2]</span>',
                    action = function()
                        ExecuteCommand('e cutthroat2')
                    end
                },
                {
                    label = 'Charlar <span>[/e talk]</span>',
                    action = function()
                        ExecuteCommand('e talk')
                    end
                },
                {
                    label = 'Discutir <span>[/e argue]</span>',
                    action = function()
                        ExecuteCommand('e argue')
                    end
                },
                {
                    label = 'Discutir 2 <span>[/e argue2]</span>',
                    action = function()
                        ExecuteCommand('e argue2')
                    end
                },
                {
                    label = 'Facepalm <span>[/e facepalm]</span>',
                    action = function()
                        ExecuteCommand('e facepalm')
                    end
                },
                {
                    label = 'Facepalm 2 <span>[/e facepalm2]</span>',
                    action = function()
                        ExecuteCommand('e facepalm2')
                    end
                },
                {
                    label = 'Facepalm 3 <span>[/e facepalm3]</span>',
                    action = function()
                        ExecuteCommand('e facepalm3')
                    end
                },
                {
                    label = 'Facepalm 4 <span>[/e facepalm4]</span>',
                    action = function()
                        ExecuteCommand('e facepalm4')
                    end
                },
                {
                    label = 'Facepalm 5 <span>[/e facepalm5]</span>',
                    action = function()
                        ExecuteCommand('e facepalm5')
                    end
                },
                {
                    label = 'Maldición <span>[/e damn]</span>',
                    action = function()
                        ExecuteCommand('e damn')
                    end
                },
                {
                    label = 'Maldición 2 <span>[/e damn2]</span>',
                    action = function()
                        ExecuteCommand('e damn2')
                    end
                },
                {
                    label = 'Mind blown <span>[/e mindblown]</span>',
                    action = function()
                        ExecuteCommand('e mindblown')
                    end
                },
                {
                    label = 'Mind blown 2 <span>[/e mindblown2]</span>',
                    action = function()
                        ExecuteCommand('e mindblown2')
                    end
                },
                {
                    label = 'Pedir calma <span>[/e calm]</span>',
                    action = function()
                        ExecuteCommand('e calm')
                    end
                },
                {
                    label = 'Que pasa! <span>[/e shrug]</span>',
                    action = function()
                        ExecuteCommand('e shrug')
                    end
                },
                {
                    label = 'Que pasa 2 <span>[/e shrug2]</span>',
                    action = function()
                        ExecuteCommand('e shrug2')
                    end
                },
                {
                    label = 'Reirse de alguien <span>[/e lol]</span>',
                    action = function()
                        ExecuteCommand('e lol')
                    end
                },
                {
                    label = 'Reñir <span>[/e boi]</span>',
                    action = function()
                        ExecuteCommand('e boi')
                    end
                },
                {
                    label = 'Señalarse <span>[/e wave6]</span>',
                    action = function()
                        ExecuteCommand('e wave6')
                    end
                },
                {
                    label = 'Silbar <span>[/e whistle]</span>',
                    action = function()
                        ExecuteCommand('e whistle')
                    end
                },
                {
                    label = 'Silbar 2 <span>[/e whistle2]</span>',
                    action = function()
                        ExecuteCommand('e whistle2')
                    end
                },
                {
                    label = 'Ven a mi bro <span>[/e comeatmebro]</span>',
                    action = function()
                        ExecuteCommand('e comeatmebro')
                    end
                },

            }
        },
        {
            name = 'jobs',
            icon = '<path d="M2 19.63L13.43 8.2L12.72 7.5L14.14 6.07L12 3.89C13.2 2.7 15.09 2.7 16.27 3.89L19.87 7.5L18.45 8.91H21.29L22 9.62L18.45 13.21L17.74 12.5V9.62L16.27 11.04L15.56 10.33L4.13 21.76L2 19.63Z" />',
            items = {
                {
                    label = 'Ajustarse la corbata <span>[/e adjusttie]</span>',
                    action = function()
                        ExecuteCommand('e adjusttie')
                    end
                },
                {
                    label = 'Ajustarse la ropa <span>[/e adjust]</span>',
                    action = function()
                        ExecuteCommand('e adjust')
                    end
                },
                {
                    label = 'Apuntar con la linterna <span>[/e flashlight]</span>',
                    action = function()
                        ExecuteCommand('e flashlight')
                    end
                },
                {
                    label = 'Arrodillarse <span>[/e kneel2]</span>',
                    action = function()
                        ExecuteCommand('e kneel2')
                    end
                },
                {
                    label = 'Arrodillarse 2 <span>[/e kneel3]</span>',
                    action = function()
                        ExecuteCommand('e kneel3')
                    end
                },
                {
                    label = 'Bum bin <span>[/e bumbin]</span>',
                    action = function()
                        ExecuteCommand('e bumbin')
                    end
                },
                {
                    label = 'Camarero <span>[/e bartender]</span>',
                    action = function()
                        ExecuteCommand('e bartender')
                    end
                },
                {
                    label = 'Carpintero <span>[/e hammer]</span>',
                    action = function()
                        ExecuteCommand('e hammer')
                    end
                },
                {
                    label = 'Coger algo del suelo <span>[/e pickup]</span>',
                    action = function()
                        ExecuteCommand('e pickup')
                    end
                },
                {
                    label = 'Controlar el tráfico <span>[/e copbeacon]</span>',
                    action = function()
                        ExecuteCommand('e copbeacon')
                    end
                },
                {
                    label = 'DJ <span>[/e dj]</span>',
                    action = function()
                        ExecuteCommand('e dj')
                    end
                },
                {
                    label = 'Empujar <span>[/e push]</span>',
                    action = function()
                        ExecuteCommand('e push')
                    end
                },
                {
                    label = 'Empujar 2 <span>[/e push2]</span>',
                    action = function()
                        ExecuteCommand('e push2')
                    end
                },
                {
                    label = 'Hacer fotos <span>[/e filmshocking]</span>',
                    action = function()
                        ExecuteCommand('e filmshocking')
                    end
                },
                {
                    label = 'Hacer fotos 2<span>[/e record]</span>',
                    action = function()
                        ExecuteCommand('e record')
                    end
                },
                {
                    label = 'Inspeccionar <span>[/e inspect]</span>',
                    action = function()
                        ExecuteCommand('e inspect')
                    end
                },
                {
                    label = 'Jardinería <span>[/e gardener]</span>',
                    action = function()
                        ExecuteCommand('e gardener')
                    end
                },
                {
                    label = 'Limpiar <span>[/e clean]</span>',
                    action = function()
                        ExecuteCommand('e clean')
                    end
                },
                {
                    label = 'Limpiar 2 <span>[/e clean2]</span>',
                    action = function()
                        ExecuteCommand('e clean2')
                    end
                },
                {
                    label = 'Limpiar 3 <span>[/e maid]</span>',
                    action = function()
                        ExecuteCommand('e maid')
                    end
                },
                {
                    label = 'Manos a la cartuchera <span>[/e reaching]</span>',
                    action = function()
                        ExecuteCommand('e reaching')
                    end
                },
                {
                    label = 'Manos al cinturón <span>[/e cop]</span>',
                    action = function()
                        ExecuteCommand('e cop')
                    end
                },
                {
                    label = 'Martillo neumático <span>[/e drill]</span>',
                    action = function()
                        ExecuteCommand('e drill')
                    end
                },
                {
                    label = 'Mecánico <span>[/e mechanic]</span>',
                    action = function()
                        ExecuteCommand('e mechanic')
                    end
                },
                {
                    label = 'Mecánico 2 <span>[/e mechanic2]</span>',
                    action = function()
                        ExecuteCommand('e mechanic2')
                    end
                },
                {
                    label = 'Mecánico 3 <span>[/e mechanic3]</span>',
                    action = function()
                        ExecuteCommand('e mechanic3')
                    end
                },
                {
                    label = 'Mecánico 4 <span>[/e mechanic4]</span>',
                    action = function()
                        ExecuteCommand('e mechanic4')
                    end
                },
                {
                    label = 'Médico <span>[/e medic]</span>',
                    action = function()
                        ExecuteCommand('e medic')
                    end
                },
                {
                    label = 'Médico 2 <span>[/e medic2]</span>',
                    action = function()
                        ExecuteCommand('e medic2')
                    end
                },
                {
                    label = 'Médico 3 <span>[/e kneel]</span>',
                    action = function()
                        ExecuteCommand('e kneel')
                    end
                },
                {
                    label = 'Mirar el mapa <span>[/e map2]</span>',
                    action = function()
                        ExecuteCommand('e map2')
                    end
                },
                {
                    label = 'Mirar las notas <span>[/e clipboard2]</span>',
                    action = function()
                        ExecuteCommand('e clipboard2')
                    end
                },
                {
                    label = 'Parkimetro <span>[/e parkingmeter]</span>',
                    action = function()
                        ExecuteCommand('e parkingmeter')
                    end
                },
                {
                    label = 'Portapapeles <span>[/e clipboard]</span>',
                    action = function()
                        ExecuteCommand('e clipboard')
                    end
                },
                {
                    label = 'Prismaticos <span>[/e binoculars]</span>',
                    action = function()
                        ExecuteCommand('e binoculars')
                    end
                },
                {
                    label = 'Quitar esposas <span>[/e uncuff]</span>',
                    action = function()
                        ExecuteCommand('e uncuff')
                    end
                },
                {
                    label = 'Radio <span>[/e radio]</span>',
                    action = function()
                        ExecuteCommand('e radio')
                    end
                },
                {
                    label = 'RCP <span>[/e cpr]</span>',
                    action = function()
                        ExecuteCommand('e cpr')
                    end
                },
                {
                    label = 'RCP 2 <span>[/e cpr2]</span>',
                    action = function()
                        ExecuteCommand('e cpr2')
                    end
                },
                {
                    label = 'Sacar fotos <span>[/e photo]</span>',
                    action = function()
                        ExecuteCommand('e photo')
                    end
                },
                {
                    label = 'Sacar teléfono <span>[/e texting]</span>',
                    action = function()
                        ExecuteCommand('e texting')
                    end
                },
                {
                    label = 'Sacudirse la ropa <span>[/e shakeoff]</span>',
                    action = function()
                        ExecuteCommand('e shakeoff')
                    end
                },
                {
                    label = 'Soldar <span>[/e weld]</span>',
                    action = function()
                        ExecuteCommand('e weld')
                    end
                },
                {
                    label = 'Soplado de hojas <span>[/e leafblower]</span>',
                    action = function()
                        ExecuteCommand('e leafblower')
                    end
                },
                {
                    label = 'Tablet <span>[/e tablet]</span>',
                    action = function()
                        ExecuteCommand('e tablet')
                    end
                },
                {
                    label = 'Tablet 2 <span>[/e tablet2]</span>',
                    action = function()
                        ExecuteCommand('e tablet2')
                    end
                },
                {
                    label = 'Teclear <span>[/e type]</span>',
                    action = function()
                        ExecuteCommand('e type')
                    end
                },
                {
                    label = 'Teclear 2 <span>[/e type2]</span>',
                    action = function()
                        ExecuteCommand('e type2')
                    end
                },
                {
                    label = 'Teclear 3 <span>[/e type3]</span>',
                    action = function()
                        ExecuteCommand('e type3')
                    end
                },
                {
                    label = 'Teclear 4 <span>[/e type4]</span>',
                    action = function()
                        ExecuteCommand('e type4')
                    end
                },
                {
                    label = 'Tomar notas <span>[/e notepad]</span>',
                    action = function()
                        ExecuteCommand('e notepad')
                    end
                },
                {
                    label = 'Tomar notas 2<span>[/e notepad2]</span>',
                    action = function()
                        ExecuteCommand('e notepad2')
                    end
                },
                {
                    label = 'Vigilando <span>[/e lookout]</span>',
                    action = function()
                        ExecuteCommand('e lookout')
                    end
                },
                {
                    label = 'Window shop <span>[/e windowshop]</span>',
                    action = function()
                        ExecuteCommand('e windowshop')
                    end
                },
                
            }
        },
        {
            name = 'others',
            icon = '<path d="M16,12A2,2 0 0,1 18,10A2,2 0 0,1 20,12A2,2 0 0,1 18,14A2,2 0 0,1 16,12M10,12A2,2 0 0,1 12,10A2,2 0 0,1 14,12A2,2 0 0,1 12,14A2,2 0 0,1 10,12M4,12A2,2 0 0,1 6,10A2,2 0 0,1 8,12A2,2 0 0,1 6,14A2,2 0 0,1 4,12Z" />',
            items = {
                {
                    label = 'Acariciar <span>[/e petting]</span>',
                    action = function()
                        ExecuteCommand('e petting')
                    end
                },
                {
                    label = 'Agarrarse el paquete <span>[/e grabcrotch]</span>',
                    action = function()
                        ExecuteCommand('e grabcrotch')
                    end
                },
                {
                    label = 'Amenazar <span>[/e threaten]</span>',
                    action = function()
                        ExecuteCommand('e threaten')
                    end
                },
                {
                    label = 'Aplaudir <span>[/e cheer]</span>',
                    action = function()
                        ExecuteCommand('e cheer')
                    end
                },
                {
                    label = 'Aplaudir <span>[/e countdown]</span>',
                    action = function()
                        ExecuteCommand('e countdown')
                    end
                },
                {
                    label = 'Aplaudir lento  <span>[/e slowclap3]</span>',
                    action = function()
                        ExecuteCommand('e slowclap3')
                    end
                },
                {
                    label = 'Aplaudir lento 2 <span>[/e slowclap]</span>',
                    action = function()
                        ExecuteCommand('e slowclap')
                    end
                },
                {
                    label = 'Aplaudir lento 3 <span>[/e slowclap2]</span>',
                    action = function()
                        ExecuteCommand('e slowclap2')
                    end
                },
                {
                    label = 'Aplaudir rápido <span>[/e clap]</span>',
                    action = function()
                        ExecuteCommand('e clap')
                    end
                },
                {
                    label = 'Apuntar <span>[/e stickup]</span>',
                    action = function()
                        ExecuteCommand('e stickup')
                    end
                },
                {
                    label = 'Arrastrar algo <span>[/e leanhigh]</span>',
                    action = function()
                        ExecuteCommand('e leanhigh')
                    end
                },
                {
                    label = 'Arrastrar algo 2 <span>[/e leanhigh2]</span>',
                    action = function()
                        ExecuteCommand('e leanhigh2')
                    end
                },
                {
                    label = 'Asustado <span>[/e scared]</span>',
                    action = function()
                        ExecuteCommand('e scared')
                    end
                },
                {
                    label = 'Asustado 2 <span>[/e scared2]</span>',
                    action = function()
                        ExecuteCommand('e scared2')
                    end
                },
                {
                    label = 'Aturdido <span>[/e stunned]</span>',
                    action = function()
                        ExecuteCommand('e stunned')
                    end
                },
                {
                    label = 'Autostop <span>[/e lift]</span>',
                    action = function()
                        ExecuteCommand('e lift')
                    end
                },
                {
                    label = 'Barbacoa <span>[/e bbq]</span>',
                    action = function()
                        ExecuteCommand('e bbq')
                    end
                },
                {
                    label = 'Basurero <span>[/e janitor]</span>',
                    action = function()
                        ExecuteCommand('e janitor')
                    end
                },
                {
                    label = 'Beber <span>[/e drink]</span>',
                    action = function()
                        ExecuteCommand('e drink')
                    end
                },
                {
                    label = 'Bestia <span>[/e beast]</span>',
                    action = function()
                        ExecuteCommand('e beast')
                    end
                },
                {
                    label = 'Boca abajo <span>[/e prone]</span>',
                    action = function()
                        ExecuteCommand('e prone')
                    end
                },
                {
                    label = 'Boca arriba <span>[/e cloudgaze]</span>',
                    action = function()
                        ExecuteCommand('e cloudgaze')
                    end
                },
                {
                    label = 'Boca arriba 2 <span>[/e cloudgaze2]</span>',
                    action = function()
                        ExecuteCommand('e cloudgaze2')
                    end
                },
                {
                    label = 'Borracho <span>[/e idledrunk]</span>',
                    action = function()
                        ExecuteCommand('e idledrunk')
                    end
                },
                {
                    label = 'Borracho 2 <span>[/e idledrunk2]</span>',
                    action = function()
                        ExecuteCommand('e idledrunk2')
                    end
                },
                {
                    label = 'Borracho 3 <span>[/e idledrunk3]</span>',
                    action = function()
                        ExecuteCommand('e idledrunk3')
                    end
                },
                {
                    label = 'Botellón <span>[/e party2]</span>',
                    action = function()
                        ExecuteCommand('e party2')
                    end
                },
                {
                    label = 'Calentar las manos <span>[/e warmth]</span>',
                    action = function()
                        ExecuteCommand('e warmth')
                    end
                },
                {
                    label = 'Cansado <span>[/e outofbreath]</span>',
                    action = function()
                        ExecuteCommand('e outofbreath')
                    end
                },
                {
                    label = 'Caerse hacia atrás <span>[/e fallover]</span>',
                    action = function()
                        ExecuteCommand('e fallover')
                    end
                },
                {
                    label = 'Celebración <span>[/e slide]</span>',
                    action = function()
                        ExecuteCommand('e slide')
                    end
                },
                {
                    label = 'Celebración 2 <span>[/e slide2]</span>',
                    action = function()
                        ExecuteCommand('e slide2')
                    end
                },
                {
                    label = 'Celebración 3 <span>[/e slide3]</span>',
                    action = function()
                        ExecuteCommand('e slide3')
                    end
                },
                {
                    label = 'Celebración 4 <span>[/e clapangry]</span>',
                    action = function()
                        ExecuteCommand('e clapangry')
                    end
                },
                {
                    label = 'Celebrar <span>[/e celebrate]</span>',
                    action = function()
                        ExecuteCommand('e celebrate')
                    end
                },
                {
                    label = 'Celebrar con un cigarro <span>[/e celebration]</span>',
                    action = function()
                        ExecuteCommand('e celebration')
                    end
                },
                {
                    label = 'Celebrar con un porro <span>[/e celebration2]</span>',
                    action = function()
                        ExecuteCommand('e celebration2')
                    end
                },
                {
                    label = 'Charco <span>[/e puddle]</span>',
                    action = function()
                        ExecuteCommand('e puddle')
                    end
                },
                {
                    label = 'Chocar manos <span>[/e hug3]</span>',
                    action = function()
                        ExecuteCommand('e hug3')
                    end
                },
                {
                    label = 'Colocarse el paquete <span>[/e grabcrotch2]</span>',
                    action = function()
                        ExecuteCommand('e grabcrotch2')
                    end
                },
                {
                    label = 'Comer <span>[/e eat]</span>',
                    action = function()
                        ExecuteCommand('e eat')
                    end
                },
                {
                    label = 'Conejo <span>[/e rabbit]</span>',
                    action = function()
                        ExecuteCommand('e rabbit')
                    end
                },
                {
                    label = 'Control mental <span>[/e mindcontrol]</span>',
                    action = function()
                        ExecuteCommand('e mindcontrol')
                    end
                },
                {
                    label = 'Control mental 2 <span>[/e mindcontrol2]</span>',
                    action = function()
                        ExecuteCommand('e mindcontrol2')
                    end
                },
                {
                    label = 'Corte de manga <span>[/e screwyou]</span>',
                    action = function()
                        ExecuteCommand('e screwyou')
                    end
                },
                {
                    label = 'Crujirse los dedos <span>[/e knucklecrunch]</span>',
                    action = function()
                        ExecuteCommand('e knucklecrunch')
                    end
                },
                {
                    label = 'Cruzarse de brazos <span>[/e cop2]</span>',
                    action = function()
                        ExecuteCommand('e cop2')
                    end
                },
                {
                    label = 'Cruzarse de brazos 2 <span>[/e crossarms]</span>',
                    action = function()
                        ExecuteCommand('e crossarms')
                    end
                },
                {
                    label = 'Cruzarse de brazos 3 <span>[/e crossarms2]</span>',
                    action = function()
                        ExecuteCommand('e crossarms2')
                    end
                },
                {
                    label = 'Cruzarse de brazos 4 <span>[/e crossarms3]</span>',
                    action = function()
                        ExecuteCommand('e crossarms3')
                    end
                },
                {
                    label = 'Cruzarse de brazos 5 <span>[/e crossarms4]</span>',
                    action = function()
                        ExecuteCommand('e crossarms4')
                    end
                },
                {
                    label = 'Cruzarse de brazos 6 <span>[/e crossarms5]</span>',
                    action = function()
                        ExecuteCommand('e crossarms5')
                    end
                },
                {
                    label = 'Cruzarse de brazos 7 <span>[/e foldarms2]</span>',
                    action = function()
                        ExecuteCommand('e foldarms2')
                    end
                },
                {
                    label = 'Cruzarse de brazos 8 <span>[/e crossarms6]</span>',
                    action = function()
                        ExecuteCommand('e crossarms6')
                    end
                },
                {
                    label = 'Cruzarse de brazos 9 <span>[/e foldarms]</span>',
                    action = function()
                        ExecuteCommand('e foldarms')
                    end
                },
                {
                    label = 'Cruzarse de brazos 10 <span>[/e crossarmsside]</span>',
                    action = function()
                        ExecuteCommand('e crossarmsside')
                    end
                },
                {
                    label = 'Dar cabezazo <span>[/e headbutt]</span>',
                    action = function()
                        ExecuteCommand('e headbutt')
                    end
                },
                {
                    label = 'Dar tortazo <span>[/e slap]</span>',
                    action = function()
                        ExecuteCommand('e slap')
                    end
                },
                {
                    label = 'De fiesta <span>[/e party3]</span>',
                    action = function()
                        ExecuteCommand('e party3')
                    end
                },
                {
                    label = 'Desmayarse <span>[/e passout]</span>',
                    action = function()
                        ExecuteCommand('e passout')
                    end
                },
                {
                    label = 'Desmayarse 2 <span>[/e passout2]</span>',
                    action = function()
                        ExecuteCommand('e passout2')
                    end
                },
                {
                    label = 'Desmayarse 5 <span>[/e passout5]</span>',
                    action = function()
                        ExecuteCommand('e passout5')
                    end
                },
                {
                    label = 'Doble puñeta <span>[/e finger2]</span>',
                    action = function()
                        ExecuteCommand('e finger2')
                    end
                },
                {
                    label = 'Dormir <span>[/e bumsleep]</span>',
                    action = function()
                        ExecuteCommand('e bumsleep')
                    end
                },
                {
                    label = 'Dormir vagabundo <span>[/e sleep2]</span>',
                    action = function()
                        ExecuteCommand('e sleep2')
                    end
                },
                {
                    label = 'Dormirse <span>[/e sleep]</span>',
                    action = function()
                        ExecuteCommand('e sleep')
                    end
                },
                {
                    label = 'Empujar <span>[/e knock2]</span>',
                    action = function()
                        ExecuteCommand('e knock2')
                    end
                },
                {
                    label = 'En guardia <span>[/e guard]</span>',
                    action = function()
                        ExecuteCommand('e guard')
                    end
                },
                {
                    label = 'Esperar <span>[/e wait]</span>',
                    action = function()
                        ExecuteCommand('e wait')
                    end
                },
                {
                    label = 'Esperar 2 <span>[/e wait2]</span>',
                    action = function()
                        ExecuteCommand('e wait2')
                    end
                },
                {
                    label = 'Esperar 3 <span>[/e wait3]</span>',
                    action = function()
                        ExecuteCommand('e wait3')
                    end
                },
                {
                    label = 'Esperar 4 <span>[/e wait4]</span>',
                    action = function()
                        ExecuteCommand('e wait4')
                    end
                },
                {
                    label = 'Esperar 5 <span>[/e wait5]</span>',
                    action = function()
                        ExecuteCommand('e wait5')
                    end
                },
                {
                    label = 'Esperar 6 <span>[/e wait6]</span>',
                    action = function()
                        ExecuteCommand('e wait6')
                    end
                },
                {
                    label = 'Esperar 7 <span>[/e wait7]</span>',
                    action = function()
                        ExecuteCommand('e wait7')
                    end
                },
                {
                    label = 'Esperar 8 <span>[/e wait8]</span>',
                    action = function()
                        ExecuteCommand('e wait8')
                    end
                },
                {
                    label = 'Esperar 9 <span>[/e wait9]</span>',
                    action = function()
                        ExecuteCommand('e wait9')
                    end
                },
                {
                    label = 'Esperar 10 <span>[/e wait10]</span>',
                    action = function()
                        ExecuteCommand('e wait10')
                    end
                },
                {
                    label = 'Esperar 11 <span>[/e wait11]</span>',
                    action = function()
                        ExecuteCommand('e wait11')
                    end
                },
                {
                    label = 'Esperar 12 <span>[/e wait12]</span>',
                    action = function()
                        ExecuteCommand('e wait12')
                    end
                },
                {
                    label = 'Esperar 13 <span>[/e wait13]</span>',
                    action = function()
                        ExecuteCommand('e wait13')
                    end
                },
                {
                    label = 'Esperar tomando un café <span>[/e idlecoffee]</span>',
                    action = function()
                        ExecuteCommand('e idlecoffee')
                    end
                },
                {
                    label = 'Estatua <span>[/e statue]</span>',
                    action = function()
                        ExecuteCommand('e statue')
                    end
                },
                {
                    label = 'Estatua 2 <span>[/e statue2]</span>',
                    action = function()
                        ExecuteCommand('e statue2')
                    end
                },
                {
                    label = 'Estatua 3 <span>[/e statue3]</span>',
                    action = function()
                        ExecuteCommand('e statue3')
                    end
                },
                {
                    label = 'Estornudar <span>[/e cough]</span>',
                    action = function()
                        ExecuteCommand('e cough')
                    end
                },
                {
                    label = 'Fingir hostia <span>[/e fallover4]</span>',
                    action = function()
                        ExecuteCommand('e fallover4')
                    end
                },
                {
                    label = 'Fingir hostia 2 <span>[/e fallover5]</span>',
                    action = function()
                        ExecuteCommand('e fallover5')
                    end
                },
                {
                    label = 'Follar <span>[/e yeah]</span>',
                    action = function()
                        ExecuteCommand('e yeah')
                    end
                },
                {
                    label = 'Fumando <span>[/e idle10]</span>',
                    action = function()
                        ExecuteCommand('e idle10')
                    end
                },
                {
                    label = 'Fumar <span>[/e smoke]</span>',
                    action = function()
                        ExecuteCommand('e smoke')
                    end
                },
                {
                    label = 'Fumar marihuana <span>[/e smokeweed]</span>',
                    action = function()
                        ExecuteCommand('e smokeweed')
                    end
                },
                {
                    label = 'Fumar tranquilo <span>[/e smoke5]</span>',
                    action = function()
                        ExecuteCommand('e smoke5')
                    end
                },
                {
                    label = 'Gallina <span>[/e chicken]</span>',
                    action = function()
                        ExecuteCommand('e chicken')
                    end
                },
                {
                    label = 'Gatear <span>[/e crawl]</span>',
                    action = function()
                        ExecuteCommand('e crawl')
                    end
                },
                {
                    label = 'Golpear <span>[/e knock]</span>',
                    action = function()
                        ExecuteCommand('e knock')
                    end
                },
                {
                    label = 'Hacer el payaso <span>[/e clown]</span>',
                    action = function()
                        ExecuteCommand('e clown')
                    end
                },
                {
                    label = 'Hacer el payaso 2 <span>[/e clown2]</span>',
                    action = function()
                        ExecuteCommand('e clown2')
                    end
                },
                {
                    label = 'Hacer el payaso 3 <span>[/e clown3]</span>',
                    action = function()
                        ExecuteCommand('e clown3')
                    end
                },
                {
                    label = 'Hacer el payaso 4 <span>[/e clown4]</span>',
                    action = function()
                        ExecuteCommand('e clown4')
                    end
                },
                {
                    label = 'Hacer el payaso 5 <span>[/e clown5]</span>',
                    action = function()
                        ExecuteCommand('e clown5')
                    end
                },
                {
                    label = 'Hangout <span>[/e hangout]</span>',
                    action = function()
                        ExecuteCommand('e hangout')
                    end
                },
                {
                    label = 'Herido de bala <span>[/e shot]</span>',
                    action = function()
                        ExecuteCommand('e shot')
                    end
                },
                {
                    label = 'Idle <span>[/e idle]</span>',
                    action = function()
                        ExecuteCommand('e idle')
                    end
                },
                {
                    label = 'Idle 2 <span>[/e idle2]</span>',
                    action = function()
                        ExecuteCommand('e idle2')
                    end
                },
                {
                    label = 'Idle 3 <span>[/e idle3]</span>',
                    action = function()
                        ExecuteCommand('e idle3')
                    end
                },
                {
                    label = 'Idle 5 <span>[/e idle5]</span>',
                    action = function()
                        ExecuteCommand('e idle5')
                    end
                },
                {
                    label = 'Idle 6 <span>[/e idle6]</span>',
                    action = function()
                        ExecuteCommand('e idle6')
                    end
                },
                {
                    label = 'Idle 7 <span>[/e idle7]</span>',
                    action = function()
                        ExecuteCommand('e idle7')
                    end
                },
                {
                    label = 'Idle 9 <span>[/e idle9]</span>',
                    action = function()
                        ExecuteCommand('e idle9')
                    end
                },
                {
                    label = 'Impaciente <span>[/e impatient]</span>',
                    action = function()
                        ExecuteCommand('e impatient')
                    end
                },
                {
                    label = 'Injusticia <span>[/e bringiton]</span>',
                    action = function()
                        ExecuteCommand('e bringiton')
                    end
                },
                {
                    label = 'Ladrar <span>[/e bark]</span>',
                    action = function()
                        ExecuteCommand('e bark')
                    end
                },
                {
                    label = 'Lanzar besos <span>[/e blowkiss]</span>',
                    action = function()
                        ExecuteCommand('e blowkiss')
                    end
                },
                {
                    label = 'Lanzar un beso <span>[/e blowkiss2]</span>',
                    action = function()
                        ExecuteCommand('e blowkiss2')
                    end
                },
                {
                    label = 'Ledge <span>[/e ledge]</span>',
                    action = function()
                        ExecuteCommand('e ledge')
                    end
                },
                {
                    label = 'Llamar ascensor <span>[/e callelevator]</span>',
                    action = function()
                        ExecuteCommand('e callelevator')
                    end
                },
                {
                    label = 'Llavero <span>[/e keyjob]</span>',
                    action = function()
                        ExecuteCommand('e keyjob')
                    end
                },
                {
                    label = 'Mandar a callar <span>[/e lol2]</span>',
                    action = function()
                        ExecuteCommand('e lol2')
                    end
                },
                {
                    label = 'Mandar un selfie <span>[/e selfie]</span>',
                    action = function()
                        ExecuteCommand('e selfie')
                    end
                },
                {
                    label = 'Manos arriba <span>[/e handsup]</span>',
                    action = function()
                        ExecuteCommand('e handsup')
                    end
                },
                {
                    label = 'Mareado <span>[/e stumble]</span>',
                    action = function()
                        ExecuteCommand('e stumble')
                    end
                },
                {
                    label = 'Mear <span>[/e pee]</span>',
                    action = function()
                        ExecuteCommand('e pee')
                    end
                },
                {
                    label = 'Mirando 7 <span>[/e idle8]</span>',
                    action = function()
                        ExecuteCommand('e idle8')
                    end
                },
                {
                    label = 'Mover la cabeza <span>[/e idle4]</span>',
                    action = function()
                        ExecuteCommand('e idle4')
                    end
                },
                {
                    label = 'Nervioso <span>[/e nervous]</span>',
                    action = function()
                        ExecuteCommand('e nervous')
                    end
                },
                {
                    label = 'Nervioso 2 <span>[/e nervous2]</span>',
                    action = function()
                        ExecuteCommand('e nervous2')
                    end
                },
                {
                    label = 'Nervioso 3 <span>[/e nervous3]</span>',
                    action = function()
                        ExecuteCommand('e nervous3')
                    end
                },
                {
                    label = 'No <span>[/e no]</span>',
                    action = function()
                        ExecuteCommand('e no')
                    end
                },
                {
                    label = 'No 2 <span>[/e no2]</span>',
                    action = function()
                        ExecuteCommand('e no2')
                    end
                },
                {
                    label = 'No 3 <span>[/e noway]</span>',
                    action = function()
                        ExecuteCommand('e noway')
                    end
                },
                {
                    label = 'Ojear <span>[/e peek]</span>',
                    action = function()
                        ExecuteCommand('e peek')
                    end
                },
                {
                    label = 'Ok <span>[/e ok]</span>',
                    action = function()
                        ExecuteCommand('e ok')
                    end
                },
                {
                    label = 'Oler <span>[/e smell]</span>',
                    action = function()
                        ExecuteCommand('e smell')
                    end
                },
                {
                    label = 'Oler mal <span>[/e stink]</span>',
                    action = function()
                        ExecuteCommand('e stink')
                    end
                },
                {
                    label = 'Paja <span>[/e wank]</span>',
                    action = function()
                        ExecuteCommand('e wank')
                    end
                },
                {
                    label = 'Paja 2 <span>[/e wank2]</span>',
                    action = function()
                        ExecuteCommand('e wank2')
                    end
                },
                {
                    label = 'Paja 3 <span>[/e wank3]</span>',
                    action = function()
                        ExecuteCommand('e wank3')
                    end
                },
                {
                    label = 'Paja 4 <span>[/e wank4]</span>',
                    action = function()
                        ExecuteCommand('e wank4')
                    end
                },
                {
                    label = 'Pájaro <span>[/e bird]</span>',
                    action = function()
                        ExecuteCommand('e bird')
                    end
                },
                {
                    label = 'Party <span>[/e party]</span>',
                    action = function()
                        ExecuteCommand('e party')
                    end
                },
                {
                    label = 'Paz <span>[/e peace]</span>',
                    action = function()
                        ExecuteCommand('e peace')
                    end
                },
                {
                    label = 'Paz 2 <span>[/e peace2]</span>',
                    action = function()
                        ExecuteCommand('e peace2')
                    end
                },
                {
                    label = 'Pegarse un tiro <span>[/e fallover2]</span>',
                    action = function()
                        ExecuteCommand('e fallover2')
                    end
                },
                {
                    label = 'Pensando <span>[/e idle11]</span>',
                    action = function()
                        ExecuteCommand('e idle11')
                    end
                },
                {
                    label = 'Pensativo <span>[/e think5]</span>',
                    action = function()
                        ExecuteCommand('e think5')
                    end
                },
                {
                    label = 'Pensativo 2 <span>[/e think]</span>',
                    action = function()
                        ExecuteCommand('e think')
                    end
                },
                {
                    label = 'Pensativo 4 <span>[/e think2]</span>',
                    action = function()
                        ExecuteCommand('e think2')
                    end
                },
                {
                    label = 'Pensativo 5 <span>[/e think4]</span>',
                    action = function()
                        ExecuteCommand('e think4')
                    end
                },
                {
                    label = 'Posición prostituta <span>[/e prosthigh]</span>',
                    action = function()
                        ExecuteCommand('e prosthigh')
                    end
                },
                {
                    label = 'Posición prostituta 2 <span>[/e prostlow]</span>',
                    action = function()
                        ExecuteCommand('e prostlow')
                    end
                },
                {
                    label = 'Posición T <span>[/e t]</span>',
                    action = function()
                        ExecuteCommand('e t')
                    end
                },
                {
                    label = 'Posición T 2 <span>[/e t2]</span>',
                    action = function()
                        ExecuteCommand('e t2')
                    end
                },
                {
                    label = 'Probarse la ropa <span>[/e tryclothes]</span>',
                    action = function()
                        ExecuteCommand('e tryclothes')
                    end
                },
                {
                    label = 'Probarse la ropa 2 <span>[/e tryclothes2]</span>',
                    action = function()
                        ExecuteCommand('e tryclothes2')
                    end
                },
                {
                    label = 'Probarse la ropa 3 <span>[/e tryclothes3]</span>',
                    action = function()
                        ExecuteCommand('e tryclothes3')
                    end
                },
                {
                    label = 'Puñetazos <span>[/e punching]</span>',
                    action = function()
                        ExecuteCommand('e punching')
                    end
                },
                {
                    label = 'Pulgar hacia arriba <span>[/e thumbsup3]</span>',
                    action = function()
                        ExecuteCommand('e thumbsup3')
                    end
                },
                {
                    label = 'Pulgares hacia arriba <span>[/e thumbsup]</span>',
                    action = function()
                        ExecuteCommand('e thumbsup')
                    end
                },
                {
                    label = 'Pulgar hacia arriba 2 <span>[/e thumbsup2]</span>',
                    action = function()
                        ExecuteCommand('e thumbsup2')
                    end
                },
                {
                    label = 'Pull <span>[/e pull]</span>',
                    action = function()
                        ExecuteCommand('e pull')
                    end
                },
                {
                    label = 'Pullover <span>[/e pullover]</span>',
                    action = function()
                        ExecuteCommand('e pullover')
                    end
                },
                {
                    label = 'Quedarse dormido <span>[/e fallasleep]</span>',
                    action = function()
                        ExecuteCommand('e fallasleep')
                    end
                },
                {
                    label = 'Rascarse el culo <span>[/e pickbutt]</span>',
                    action = function()
                        ExecuteCommand('e pickbutt')
                    end
                },
                {
                    label = 'Reaccionar atrás tirarse derecha <span>[/e dive4]</span>',
                    action = function()
                        ExecuteCommand('e dive4')
                    end
                },
                {
                    label = 'Reaccionar atrás tirarse izqda <span>[/e dive3]</span>',
                    action = function()
                        ExecuteCommand('e dive3')
                    end
                },
                {
                    label = 'Reaccionar derecha tirarse de atrás <span>[/e dive7]</span>',
                    action = function()
                        ExecuteCommand('e dive7')
                    end
                },
                {
                    label = 'Reaccionar derecha tirarse de frente <span>[/e dive8]</span>',
                    action = function()
                        ExecuteCommand('e dive8')
                    end
                },
                {
                    label = 'Reaccionar frente tirarse derecha <span>[/e dive2]</span>',
                    action = function()
                        ExecuteCommand('e dive2')
                    end
                },
                {
                    label = 'Reaccionar frente tirarse izqda <span>[/e dive]</span>',
                    action = function()
                        ExecuteCommand('e dive')
                    end
                },
                {
                    label = 'Reaccionar izqda tirarse de frente <span>[/e dive6]</span>',
                    action = function()
                        ExecuteCommand('e dive6')
                    end
                },
                {
                    label = 'Reaccionar izqda tirarse espalda <span>[/e dive5]</span>',
                    action = function()
                        ExecuteCommand('e dive5')
                    end
                },
                {
                    label = 'Reverencia <span>[/e bow]</span>',
                    action = function()
                        ExecuteCommand('e bow')
                    end
                },
                {
                    label = 'Reverencia 2 <span>[/e bow2]</span>',
                    action = function()
                        ExecuteCommand('e bow2')
                    end
                },
                {
                    label = 'Reverencia <span>[/e curtsy]</span>',
                    action = function()
                        ExecuteCommand('e curtsy')
                    end
                },
                {
                    label = 'Sacar el dedo <span>[/e finger]</span>',
                    action = function()
                        ExecuteCommand('e finger')
                    end
                },
                {
                    label = 'Sacar el dedo 2 <span>[/e flipoff]</span>',
                    action = function()
                        ExecuteCommand('e flipoff')
                    end
                },
                {
                    label = 'Sacar los dos dedos <span>[/e flipoff2]</span>',
                    action = function()
                        ExecuteCommand('e flipoff2')
                    end
                },
                {
                    label = 'Selfie hermano <span>[/e selfiebro]</span>',
                    action = function()
                        ExecuteCommand('e selfiebro')
                    end
                },
                {
                    label = 'Selfie paz <span>[/e selfiepeace]</span>',
                    action = function()
                        ExecuteCommand('e selfiepeace')
                    end
                },
                {
                    label = 'Señalar <span>[/e point]</span>',
                    action = function()
                        ExecuteCommand('e point')
                    end
                },
                {
                    label = 'Señalar derecha <span>[/e pointright]</span>',
                    action = function()
                        ExecuteCommand('e pointright')
                    end
                },
                {
                    label = 'Señalar hacia abajo <span>[/e pointdown]</span>',
                    action = function()
                        ExecuteCommand('e pointdown')
                    end
                },
                {
                    label = 'Sorpresa <span>[/e jazzhands]</span>',
                    action = function()
                        ExecuteCommand('e jazzhands')
                    end
                },
                {
                    label = 'Spider-man <span>[/e spiderman]</span>',
                    action = function()
                        ExecuteCommand('e spiderman')
                    end
                },
                {
                    label = 'Superheroe <span>[/e superhero]</span>',
                    action = function()
                        ExecuteCommand('e superhero')
                    end
                },
                {
                    label = 'Superheroe 2 <span>[/e superhero2]</span>',
                    action = function()
                        ExecuteCommand('e superhero2')
                    end
                },
                {
                    label = 'Tirar moco <span>[/e nosepick]</span>',
                    action = function()
                        ExecuteCommand('e nosepick')
                    end
                },
                {
                    label = 'Tocar instrumento <span>[/e musician]</span>',
                    action = function()
                        ExecuteCommand('e musician')
                    end
                },
                {
                    label = 'Tocando la guitarra <span>[/e airguitar]</span>',
                    action = function()
                        ExecuteCommand('e airguitar')
                    end
                },
                {
                    label = 'Tocar el piano <span>[/e airsynth]</span>',
                    action = function()
                        ExecuteCommand('e airsynth')
                    end
                },
                {
                    label = 'Tomar el sol <span>[/e sunbathe]</span>',
                    action = function()
                        ExecuteCommand('e sunbathe')
                    end
                },
                {
                    label = 'Tomar el sol 2 <span>[/e sunbathe2]</span>',
                    action = function()
                        ExecuteCommand('e sunbathe2')
                    end
                },
                {
                    label = 'Tomar el sol 3 <span>[/e sunbatheback]</span>',
                    action = function()
                        ExecuteCommand('e sunbatheback')
                    end
                },
                {
                    label = 'Tomarse una pastilla <span>[/e fallover3]</span>',
                    action = function()
                        ExecuteCommand('e fallover3')
                    end
                },
                {
                    label = 'Tumbarse de lado <span>[/e chill]</span>',
                    action = function()
                        ExecuteCommand('e chill')
                    end
                },
                {
                    label = 'Twerk <span>[/e twerk]</span>',
                    action = function()
                        ExecuteCommand('e twerk')
                    end
                },
                {
                    label = 'Yo <span>[/e me]</span>',
                    action = function()
                        ExecuteCommand('e me')
                    end
                },
            }
        },
    }
}