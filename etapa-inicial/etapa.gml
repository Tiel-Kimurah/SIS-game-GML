//almenta a escala de personagem
//asticando ele da esquerda ou direita
if keyboard_check(vk_right){
    image_xscale += 1;
}else if keyboard_check(vk_left){
    image_xscale -= 1;
};

//as folhas leem as linhas de codigo em ordem de cima pra baixo, entao, a ordem das funcoes importa

//para fazer o personagem se movimentar
if keyboard_check(vk_left){
    x -= 2 * 2; //o vezes dois serve para multiplicar a velocidade dele
}else if keyboard_check(vk_right){
    x += velocidade_movimento;
};

//para ele subir e descer
if keyboard_check(vk_up){
    y -= velocidade_movimento;
}else if keyboard_check(vk_donw){
    y += velocidade_movimento;
};

//gravidade
//sistema de colisao vertical
if !place_meeting(x, y+1, obg_bloco){

     //o simbolo "!" significa negacao
    //ele recebe "+1" pois tem de medir um pixel abaixo do personagem

    vspeed =+ 0.3;
}else{
    vspeed = 0;
};

//funcao que dara acao de pulo
if keyboard_check_pressed(vk_space) && place_meeting(x, y+1, obg_bloco){
    vspeed = -8; 

    //o numero "8" representa a altura que ele deve pular
};

//tambem e posivel fazer o botao de pulo dentro da funcao de colisor

if !place_meeting(x, y+1, obg_bloco){
    vspeed += 0.3
    if keyboard_check_pressed(vk_space){
        vspeed = -8
    };
}else{
    vspeed = 0
};

//para criar double jump

pulos = 2;

if !place_meeting(x, y+1, obg_bloco){
    vspeed += 0.3;
    pulos = 2;
}else{
    vspeed = 0;
};

if keyboard_check_pressed(vk_space) && pulos>0 {
    vspeed = -8;
    pulos -= 1;
};