K_UP = 38
K_DOWN = 40
K_RIGHT = 39
K_LEFT = 37

K_SPACE = 32
K_BACKSPACE = 8
K_TAB = 9
K_ENTER = 13
K_SHIFT = 16
K_CTRL = 17
K_ALT = 18
K_ESC = 27

K_0 = 48
K_1 = 49
K_2 = 50
K_3 = 51
K_4 = 52
K_5 = 53
K_6 = 54
K_7 = 55
K_8 = 56
K_9 = 57
K_a = 65
K_b = 66
K_c = 67
K_d = 68
K_e = 69
K_f = 70
K_g = 71
K_h = 72
K_i = 73
K_j = 74
K_k = 75
K_l = 76
K_m = 77
K_n = 78
K_o = 79
K_p = 80
K_q = 81
K_r = 82
K_s = 83
K_t = 84
K_u = 85
K_v = 86
K_w = 87
K_x = 88
K_y = 89
K_z = 90
QUIT = 0
KEY_DOWN = 1
KEY_UP = 2
MOUSE_MOTION = 3
MOUSE_UP = 4
MOUSE_DOWN = 5
MOUSE_WHEEL = 6

onkeydown = (ev, wm) ->
        return if not wm.selected

        obj = wm.selected

        return if not obj.dash

        switch ev.keyCode
                #when K_UP then  obj.acc([0,-1], 1)
                when K_UP then  obj.dash(36)
                #when K_DOWN then  obj.acc([0,1], 1)
                when K_DOWN then  obj.dash(-36)
                when K_LEFT then  obj.turn(1)
                when K_RIGHT then obj.turn(-1)
                when K_d then obj.kick(2)


onmousedown = (ev, wm, x, y) ->
        for obj in wm.objs
                continue if obj.r is undefined or obj.x is undefined or obj.y is undefined
                if Math.abs(x-obj.x) < obj.r and Math.abs(y-obj.y) < obj.r
                        wm.selected = obj
                        obj.sc = "#87CEFA"
                        return 1
        return 0

        
                        