valZ = 10; // valore da 1 a 50 che definisce la aggressività dell'animatronico
global.posizione = 6;
possibilita1 = 0;
possibilita2 = 0;

movimento = function(){ 
      if(global.posizione != 12 && global.posizione != 22){
            ranInt = irandom_range(1, 50);
            if (ranInt <= valZ) {
                  show_debug_message("movimento VAL-Z: " + ranInt);
                  switch(page){
                        case 6:
                              possibilita1 = 51;
                              possibilita2 = 0;
                              break;
                        case 51:
                              possibilita1 = 52;
                              possibilita2 = 0;
                              break;
                        case 52:
                              possibilita1 = 11;
                              possibilita2 = 21;
                              break;
                        case 11:
                              possibilita1 = 12;
                              possibilita2 = 21;
                              break;
                        case 21:
                              possibilita1 = 22;
                              possibilita2 = 11;
                              break;
                  }
                  if(possibilita2 == 0){
                        global.posizione = possibilita1;
                  }else{
                        fiftyfifty = irandom_range(1, 2);
                        if(fiftyfifty == 1){
                              global.posizione = possibilita1;
                        }else{
                              global.posizione = possibilita2;
                        }
                  }
                  checkAttacco();
          }else{
                  show_debug_message("no movimento VAL-Z: " + ranInt);
            }
      }
}

checkAttacco = function(){
      controllo_posizione = time_source_create(time_source_game, 7.5, time_source_units_seconds, attacco, [], -1); // -1 significa che si ripete all'infinito
      
      attacco = function(){
            if(global.firewall1 == false && global.posizione == 12){
                  show_debug_message("Jumpscare");
            }
            if(global.firewall2 == false && global.posizione == 22){
                  show_debug_message("Jumpscare");
            }
      }
}


controllo_posizione = time_source_create(time_source_game, 5, time_source_units_seconds, movimento, [], -1); // -1 significa che si ripete all'infinito

time_source_start(controllo_posizione);