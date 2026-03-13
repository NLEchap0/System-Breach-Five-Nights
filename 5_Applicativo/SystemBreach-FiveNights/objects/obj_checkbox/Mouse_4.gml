with(obj_impostazioni_controller)
{
	if(active == 1)
	{
		active = 0;
		aggiorna_checkbox();
	}
	else{
		active = 1;
		aggiorna_checkbox();
	}
}