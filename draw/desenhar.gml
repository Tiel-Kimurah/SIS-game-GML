//funcao de desenhar

//escrever uma mensagemna tela
draw_self()

draw_set_color(c_white)

//o texto so aparece dps que clica a tecla control
if keyboard_check(vk_control){
    draw_text(x, y-186, "give me");
    draw_text(x, y-164, "your bunda")
};