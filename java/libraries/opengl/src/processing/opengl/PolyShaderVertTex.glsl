/*
  Part of the Processing project - http://processing.org

  Copyright (c) 20011-12 Ben Fry and Casey Reas

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License version 2.1 as published by the Free Software Foundation.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General
  Public License along with this library; if not, write to the
  Free Software Foundation, Inc., 59 Temple Place, Suite 330,
  Boston, MA  02111-1307  USA
 */

uniform mat4 projmodelviewMatrix;
uniform mat4 texcoordMatrix;

attribute vec4 inVertex;
attribute vec4 inColor;
attribute vec2 inTexcoord;

varying vec4 vertColor;
varying vec4 vertTexcoord;

void main() {
  gl_Position = projmodelviewMatrix * inVertex;
    
  vertColor = inColor;
  vertTexcoord = texcoordMatrix * vec4(inTexcoord, 1.0, 1.0);
}