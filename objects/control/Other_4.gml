
time_start = current_time * 0.001;	
end_time = time_start + 61;
global.points = 0;
seconds_alive = 0;
global.seconds_lived = 0;

global.new_highscore = false;

global.points = 0;
global.combo = 1;
global.highscore = 0;
global.end_game = false;
global.seconds_lived = 0;
global.adventure_unlocked = false;
global.adventure_highscore = 0;

load_highscore();

if (audio_is_playing(snd_water)) audio_stop_sound(snd_water);