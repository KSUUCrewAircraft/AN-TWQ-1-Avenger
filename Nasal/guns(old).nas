# gun_fire_check = func 
 { 
	
   setlistener("/controls/armament/trigger", func()
 {
  getprop("/controls/armament/trigger") : 0;

  setprop("/controls/armament/gun-fire", fire);

 }
  ,1,0);
	setlistener("/controls/armament/trigger1", func() 
 {
	 
  getprop("/controls/armament/trigger1") : 0;

  setprop("/controls/armament/rocket1-fire", fire);

 }
  ,1,0);
	setlistener("/controls/armament/trigger2", func() 
 {
	 
  getprop("/controls/armament/trigger2") : 0;

  setprop("/controls/armament/rocket2-fire", fire);

 }
  ,1,0);
	}

setlistener("/sim/signals/fdm-initialized", func() 
 { 
	
  gun_fire_check();
	
 }
  ,1,0);


