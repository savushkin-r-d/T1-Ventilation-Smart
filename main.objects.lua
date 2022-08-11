--version  = 1
--Eplanner version = 2022.8.8251.20557
--PAC_name = 'BR1-Вентиляция-смарт'
------------------------------------------------------------------------------
------------------------------------------------------------------------------
init_tech_objects_modes = function()
    return
    {
    [ 1 ] =
        {
        n          = 1,
        tech_type  = 2,
        name       = 'Пользовательский объект',
        name_eplan = 'USER',
        name_BC    = 'UserObj',
        cooper_param_number = -1,
        base_tech_object = 'user_object',
        attached_objects = '',

        modes =
            {
            [ 1 ] =
                {
                name = 'Работа',
                base_operation = '',
                states =
                    {
                    [ 1 ] =
                        {
                        --'Выполнение'
                        opened_devices = --Включать
                            {
                            'PV1M1', 'PV1M2', 'PV1V1', 'PV1V5'
                            },
                        steps =
                            {
                            [ 1 ] =
                                {
                                name = 'Охлаждение',
                                time_param_n = -1,
                                next_step_n = -1,
                                baseStep = '',
                                opened_devices = --Включать
                                    {
                                    'PV1M3'
                                    },
                                },
                            [ 2 ] =
                                {
                                name = 'Нагрев',
                                time_param_n = -1,
                                next_step_n = -1,
                                baseStep = '',
                                },
                            [ 3 ] =
                                {
                                name = 'Аварийный останов',
                                time_param_n = -1,
                                next_step_n = -1,
                                baseStep = '',
                                closed_devices = --Выключать
                                    {
                                    'PV1M1', 'PV1M2', 'PV1M3', 'PV1V1', 'PV1V5'
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
    }
end