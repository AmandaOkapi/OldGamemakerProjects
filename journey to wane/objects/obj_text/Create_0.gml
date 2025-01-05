/// @desc
spd=0.25;
letters=0;
//array
text = ["Here you go Virgil,\nI know it's not the kind of boat you were\nhoping for but with enough strength you can\nget to wherever you want on Otter Lake!\nHey why do you even need to go out on the\nwater today anyways?", "Oh! Its for ummm... school, ya school!\nI need to write a report on water samples \nfor biology class!", "Oh ok, sounds good to me!", "*phew he didn't realize today is a weekday and \nthat I should be in school*", "Before you go, make sure to stay clear of the \nbulrush plants and watch out for all those \nraccoons out and about. I swear ever since that \nmotorcyclist came into town they've been \nacting all strange.", "Okay, thanks Uncle Tim!", "Good luck on your project!", "*I'm actually going to visit my Uncle Wayne who \nlives on an island in the lake,\nhere I go!*" ];
i=0;
length = string_length(text[i]);
text_current = "";
done=false;
audio_play_sound(sn_text,3,true);
obj_tim.image_index=0;