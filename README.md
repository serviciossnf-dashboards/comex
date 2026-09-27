# Dashboard COMEX SNF - Demo V1

## Instalación
1. Copiar esta carpeta completa a `Z:\public\Pato\Dashboards\Comex`.
2. Abrir CMD en esa carpeta y ejecutar `npm install`.
3. Para ver localmente: ejecutar `ver_demo.bat`.
4. Para actualizar y publicar: ejecutar `actualizar_comex.bat`.

## Fuente
`Z:\public\COMEX\Importaciones_SNFARG_2025.xlsx`

## Modelo
- Fuente operativa: Seguimiento.
- Control: Embarques.
- Incidentes: Desvios.
- Flujo separado: Costa Oriental.
- Conteo de embarques: BL, luego Booking, PO, Invoice o Contenedor.

## Netlify
La primera vez, ejecutar `npx netlify login` y `npx netlify link` dentro del proyecto. Después el BAT despliega automáticamente.
