# 📊 Análisis de Consultas SQL


## 📈 Resumen
✅ 24 correctas de 41 queries

## ✅ Query 1: Correcto

⏱ Tiempo: 0.40 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 2: Correcto

⏱ Tiempo: 0.33 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 3: Correcto

⏱ Tiempo: 0.32 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ✅ Query 4: Correcto

⏱ Tiempo: 0.32 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 5: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,4 @@
-nom del producte | euros | dòlars
+nom del producte | euros | dolars
 Disco duro SATA3 1TB | 86.99 | 95.69
 Memoria RAM DDR4 8GB | 120.00 | 132.00
 Disco SSD 1 TB | 150.99 | 166.09
```

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 6: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,4 @@
-nombre | precio
+upper(nombre) | precio
 DISCO DURO SATA3 1TB | 86.99
 MEMORIA RAM DDR4 8GB | 120.00
 DISCO SSD 1 TB | 150.99
```

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 7: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,4 @@
-nombre | precio
+lower(nombre) | precio
 disco duro sata3 1tb | 86.99
 memoria ram ddr4 8gb | 120.00
 disco ssd 1 tb | 150.99
```

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 8: Incorrecto
```diff
--- 
+++ 
@@ -1,10 +1,12 @@
-nombre | iniciales
-Asus | AS
-Lenovo | LE
-Hewlett-Packard | HE
-Samsung | SA
-Seagate | SE
-Crucial | CR
-Gigabyte | GI
-Huawei | HU
-Xiaomi | XI
+nombre | upper(nombre)
+Disco duro SATA3 1TB | DISCO DURO SATA3 1TB
+Memoria RAM DDR4 8GB | MEMORIA RAM DDR4 8GB
+Disco SSD 1 TB | DISCO SSD 1 TB
+GeForce GTX 1050Ti | GEFORCE GTX 1050TI
+GeForce GTX 1080 Xtreme | GEFORCE GTX 1080 XTREME
+Monitor 24 LED Full HD | MONITOR 24 LED FULL HD
+Monitor 27 LED Full HD | MONITOR 27 LED FULL HD
+Portátil Yoga 520 | PORTÁTIL YOGA 520
+Portátil Ideapd 320 | PORTÁTIL IDEAPD 320
+Impresora HP Deskjet 3720 | IMPRESORA HP DESKJET 3720
+Impresora HP Laserjet Pro M26nw | IMPRESORA HP LASERJET PRO M26NW
```

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 9: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,4 @@
-nombre | precio
+nombre | round(precio)
 Disco duro SATA3 1TB | 87.00
 Memoria RAM DDR4 8GB | 120.00
 Disco SSD 1 TB | 151.00
```

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 10: Incorrecto
```diff
--- 
+++ 
@@ -1,12 +1,12 @@
 nombre | precio truncado
-Disco duro SATA3 1TB | 86.00
+Disco duro SATA3 1TB | 87.00
 Memoria RAM DDR4 8GB | 120.00
-Disco SSD 1 TB | 150.00
+Disco SSD 1 TB | 151.00
 GeForce GTX 1050Ti | 185.00
 GeForce GTX 1080 Xtreme | 755.00
 Monitor 24 LED Full HD | 202.00
-Monitor 27 LED Full HD | 245.00
+Monitor 27 LED Full HD | 246.00
 Portátil Yoga 520 | 559.00
 Portátil Ideapd 320 | 444.00
-Impresora HP Deskjet 3720 | 59.00
+Impresora HP Deskjet 3720 | 60.00
 Impresora HP Laserjet Pro M26nw | 180.00
```

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 11: Correcto

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 12: Correcto

⏱ Tiempo: 0.30 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

---

## ❌ Query 13: Incorrecto
```diff
--- 
+++ 
@@ -1,10 +1,12 @@
 nombre
-Asus
-Crucial
-Gigabyte
-Hewlett-Packard
-Huawei
-Lenovo
-Samsung
-Seagate
-Xiaomi
+Disco duro SATA3 1TB
+Disco SSD 1 TB
+GeForce GTX 1050Ti
+GeForce GTX 1080 Xtreme
+Impresora HP Deskjet 3720
+Impresora HP Laserjet Pro M26nw
+Memoria RAM DDR4 8GB
+Monitor 24 LED Full HD
+Monitor 27 LED Full HD
+Portátil Ideapd 320
+Portátil Yoga 520
```

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 14: Incorrecto
```diff
--- 
+++ 
@@ -1,10 +1,12 @@
 nombre
-Xiaomi
-Seagate
-Samsung
-Lenovo
-Huawei
-Hewlett-Packard
-Gigabyte
-Crucial
-Asus
+Portátil Yoga 520
+Portátil Ideapd 320
+Monitor 27 LED Full HD
+Monitor 24 LED Full HD
+Memoria RAM DDR4 8GB
+Impresora HP Laserjet Pro M26nw
+Impresora HP Deskjet 3720
+GeForce GTX 1080 Xtreme
+GeForce GTX 1050Ti
+Disco SSD 1 TB
+Disco duro SATA3 1TB
```

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 15: Correcto

⏱ Tiempo: 0.32 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 16: Incorrecto
```diff
--- 
+++ 
@@ -1,6 +1,6 @@
-codigo | nombre
-1.00 | Asus
-2.00 | Lenovo
-3.00 | Hewlett-Packard
-4.00 | Samsung
-5.00 | Seagate
+codigo | nombre | precio | codigo_fabricante
+1.00 | Disco duro SATA3 1TB | 86.99 | 5.00
+2.00 | Memoria RAM DDR4 8GB | 120.00 | 6.00
+3.00 | Disco SSD 1 TB | 150.99 | 4.00
+4.00 | GeForce GTX 1050Ti | 185.00 | 7.00
+5.00 | GeForce GTX 1080 Xtreme | 755.00 | 6.00
```

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ❌ Query 17: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,3 @@
-codigo | nombre
-4.00 | Samsung
-5.00 | Seagate
+codigo | nombre | precio | codigo_fabricante
+4.00 | GeForce GTX 1050Ti | 185.00 | 7.00
+5.00 | GeForce GTX 1080 Xtreme | 755.00 | 6.00
```

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ✅ Query 18: Correcto

⏱ Tiempo: 0.33 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 19: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 20: Correcto

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

---

## ✅ Query 21: Correcto

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ❌ Query 22: Incorrecto
```diff
--- 
+++ 
@@ -1,12 +1,12 @@
 nombre | precio | nombre del fabricante
+Disco duro SATA3 1TB | 86.99 | Seagate
+Disco SSD 1 TB | 150.99 | Samsung
+GeForce GTX 1050Ti | 185.00 | Gigabyte
+GeForce GTX 1080 Xtreme | 755.00 | Crucial
+Impresora HP Deskjet 3720 | 59.99 | Hewlett-Packard
+Impresora HP Laserjet Pro M26nw | 180.00 | Hewlett-Packard
+Memoria RAM DDR4 8GB | 120.00 | Crucial
 Monitor 24 LED Full HD | 202.00 | Asus
 Monitor 27 LED Full HD | 245.99 | Asus
-Memoria RAM DDR4 8GB | 120.00 | Crucial
-GeForce GTX 1080 Xtreme | 755.00 | Crucial
-GeForce GTX 1050Ti | 185.00 | Gigabyte
-Impresora HP Deskjet 3720 | 59.99 | Hewlett-Packard
-Impresora HP Laserjet Pro M26nw | 180.00 | Hewlett-Packard
+Portátil Ideapd 320 | 444.00 | Lenovo
 Portátil Yoga 520 | 559.00 | Lenovo
-Portátil Ideapd 320 | 444.00 | Lenovo
-Disco SSD 1 TB | 150.99 | Samsung
-Disco duro SATA3 1TB | 86.99 | Seagate
```

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 23: Correcto

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ❌ Query 24: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,2 @@
-nombre | precio | fabricant
+nombre | precio | fabricante
 Impresora HP Deskjet 3720 | 59.99 | Hewlett-Packard
```

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 25: Correcto

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 26: Correcto

⏱ Tiempo: 0.41 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

🚨 **Problemas detectados:**
⚠️ Considerar `EXISTS` en lugar de `IN` para eficiencia.

---

## ✅ Query 27: Correcto

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

🚨 **Problemas detectados:**
⚠️ Considerar `EXISTS` en lugar de `IN` para eficiencia.

---

## ✅ Query 28: Correcto

⏱ Tiempo: 0.39 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

🚨 **Problemas detectados:**
⚠️ Considerar `EXISTS` en lugar de `IN` para eficiencia.

---

## ✅ Query 29: Correcto

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

🚨 **Problemas detectados:**
⚠️ Considerar `EXISTS` en lugar de `IN` para eficiencia.

---

## ✅ Query 30: Correcto

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ✅ Query 31: Correcto

⏱ Tiempo: 0.35 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 32: Incorrecto
```diff
--- 
+++ 
@@ -1,8 +1,8 @@
 nombre | precio | fabricante
+GeForce GTX 1050Ti | 185.00 | Gigabyte
 GeForce GTX 1080 Xtreme | 755.00 | Crucial
+Monitor 24 LED Full HD | 202.00 | Asus
+Monitor 27 LED Full HD | 245.99 | Asus
 Portátil Yoga 520 | 559.00 | Lenovo
 Portátil Ideapd 320 | 444.00 | Lenovo
-Monitor 27 LED Full HD | 245.99 | Asus
-Monitor 24 LED Full HD | 202.00 | Asus
-GeForce GTX 1050Ti | 185.00 | Gigabyte
 Impresora HP Laserjet Pro M26nw | 180.00 | Hewlett-Packard
```

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ❌ Query 33: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,4 @@
-codigo | nombre
+codigo | fabricante
 1.00 | Asus
 2.00 | Lenovo
 3.00 | Hewlett-Packard
```

⏱ Tiempo: 0.34 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ✅ Query 34: Correcto

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

---

## ✅ Query 35: Correcto

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

🚨 **Problemas detectados:**
⚠️ Considerar `EXISTS` en lugar de `IN` para eficiencia.

---

## ✅ Query 36: Correcto

⏱ Tiempo: 0.35 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

🚨 **Problemas detectados:**
⚠️ Considerar `EXISTS` en lugar de `IN` para eficiencia.
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ❌ Query 37: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,3 @@
 codigo | nombre | precio | codigo_fabricante
 8.00 | Portátil Yoga 520 | 559.00 | 2.00
+9.00 | Portátil Ideapd 320 | 444.00 | 2.00
```

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

🚨 **Problemas detectados:**
⚠️ Considerar `EXISTS` en lugar de `IN` para eficiencia.
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ✅ Query 38: Correcto

⏱ Tiempo: 0.34 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

🚨 **Problemas detectados:**
⚠️ Considerar `EXISTS` en lugar de `IN` para eficiencia.

---

## ✅ Query 39: Correcto

⏱ Tiempo: 0.34 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

🚨 **Problemas detectados:**
⚠️ Considerar `EXISTS` en lugar de `IN` para eficiencia.

---

## ❌ Query 40: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,12 @@
-codigo | nombre | precio | codigo_fabricante
-5.00 | GeForce GTX 1080 Xtreme | 755.00 | 6.00
-8.00 | Portátil Yoga 520 | 559.00 | 2.00
+nombre
+Disco duro SATA3 1TB
+Memoria RAM DDR4 8GB
+Disco SSD 1 TB
+GeForce GTX 1050Ti
+GeForce GTX 1080 Xtreme
+Monitor 24 LED Full HD
+Monitor 27 LED Full HD
+Portátil Yoga 520
+Portátil Ideapd 320
+Impresora HP Deskjet 3720
+Impresora HP Laserjet Pro M26nw
```

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

🚨 **Problemas detectados:**
⚠️ Considerar `EXISTS` en lugar de `IN` para eficiencia.

---

## ❌ Query 41: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1 @@
-codigo | nombre | precio | codigo_fabricante
-7.00 | Monitor 27 LED Full HD | 245.99 | 1.00
+nombre
```

⏱ Tiempo: 0.40 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

🚨 **Problemas detectados:**
⚠️ Considerar `EXISTS` en lugar de `IN` para eficiencia.

---
