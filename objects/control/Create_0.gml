#macro DRAW_URL false
#macro Desktop:DRAW_URL true

time_start = 0;
global.points = 0;
global.combo = 1;
global.highscore = 0;
global.end_game = false;
global.new_highscore = false;
seconds_alive = 0;
global.seconds_lived = 0;
global.adventure_unlocked = false;
global.adventure_highscore = 0;

load_highscore();