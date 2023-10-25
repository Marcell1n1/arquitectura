import { Evaluacion } from "./evaluacion"

import { TipoLimpieza } from "./tipolimpieza";

export interface Limpiador{
    id_limpiador:number;
    dni:number;
    edad:number;
    nombre_completo:String;
    email:String;
    contraseña:String;
    tipoRegistro:String;
    num_servicios:number;
    telefono:String;
    descripcion:String;
    calificacion:number;
    evaluaciones:Evaluacion[];
    tipoLimpieza:TipoLimpieza[];
}