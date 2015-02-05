varying vec2 vUv;
varying vec3 vMVPos;
void main(){

  vUv = uv;

  vec4 mv = modelViewMatrix * vec4( position , 1. );
  vMVPos = mv.xyz;

  gl_Position = projectionMatrix * mv;

}
