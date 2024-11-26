[33mcommit 0b6277011788d93ddf469dfe9f83c996d6dbcfc7[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m)[m
Author: Hector Cano <hectorcanolealestudios@gmail.com>
Date:   Mon Nov 25 19:57:03 2024 -0300

    se agrega recurso sql para insertar en las tabla questions y trivias

[1mdiff --git a/Resource_Sql/insert_questios.sql b/Resource_Sql/insert_questios.sql[m
[1mnew file mode 100644[m
[1mindex 0000000..ac9f9d0[m
[1m--- /dev/null[m
[1m+++ b/Resource_Sql/insert_questios.sql[m
[36m@@ -0,0 +1,36 @@[m
[32m+[m[32mINSERT INTO public.questions_question (question_text, level, options, correct_answer)[m
[32m+[m[32mVALUES[m
[32m+[m[32m-- Trivia de Introducción a Recursos Humanos[m
[32m+[m[32m('¿Qué es Recursos Humanos?', 'easy', '{"a": "Un departamento de una empresa", "b": "Un software de gestión", "c": "Una ley laboral"}', 'a'),[m
[32m+[m[32m('¿Cuál es una función principal de Recursos Humanos?', 'medium', '{"a": "Gestión de inventarios", "b": "Selección de personal", "c": "Revisión financiera"}', 'b'),[m
[32m+[m[32m('¿Qué documento suele elaborar el área de Recursos Humanos?', 'hard', '{"a": "Informe de desempeño", "b": "Balance financiero", "c": "Manual técnico"}', 'a'),[m
[32m+[m
[32m+[m[32m-- Trivia sobre Entrevistas de Trabajo[m
[32m+[m[32m('¿Qué se evalúa en una entrevista de trabajo?', 'easy', '{"a": "Habilidades y experiencia", "b": "Aspectos físicos", "c": "Estado financiero"}', 'a'),[m
[32m+[m[32m('¿Qué tipo de preguntas son comunes en entrevistas laborales?', 'medium', '{"a": "Técnicas y conductuales", "b": "Personales únicamente", "c": "Políticas"}', 'a'),[m
[32m+[m[32m('¿Cuál es una estrategia clave durante la entrevista?', 'hard', '{"a": "Escuchar activamente", "b": "Hablar de temas irrelevantes", "c": "Hablar más que el entrevistador"}', 'a'),[m
[32m+[m
[32m+[m[32m-- Trivia de Normativas Laborales[m
[32m+[m[32m('¿Qué regula la normativa laboral?', 'easy', '{"a": "Relación empleado-empleador", "b": "Uso de equipos tecnológicos", "c": "Control de inventarios"}', 'a'),[m
[32m+[m[32m('¿Qué documento respalda los derechos laborales?', 'medium', '{"a": "Código laboral", "b": "Guía de usuario", "c": "Plan de marketing"}', 'a'),[m
[32m+[m[32m('¿Qué acción es una obligación del empleador según la normativa?', 'hard', '{"a": "Garantizar un ambiente seguro", "b": "Comprar insumos", "c": "Capacitar a proveedores"}', 'a'),[m
[32m+[m
[32m+[m[32m-- Trivia de Evaluaciones de Desempeño[m
[32m+[m[32m('¿Qué mide una evaluación de desempeño?', 'easy', '{"a": "Productividad del empleado", "b": "Satisfacción del cliente", "c": "Estado del inventario"}', 'a'),[m
[32m+[m[32m('¿Qué instrumento es común en evaluaciones de desempeño?', 'medium', '{"a": "Cuestionarios y métricas", "b": "Encuestas de mercado", "c": "Balances financieros"}', 'a'),[m
[32m+[m[32m('¿Qué se hace después de evaluar el desempeño?', 'hard', '{"a": "Retroalimentación", "b": "Revisión de presupuestos", "c": "Contratar nuevos empleados"}', 'a'),[m
[32m+[m
[32m+[m[32m-- Trivia sobre Selección de Personal[m
[32m+[m[32m('¿Qué documento debe presentar un candidato?', 'easy', '{"a": "Currículum", "b": "Informe financiero", "c": "Contrato laboral"}', 'a'),[m
[32m+[m[32m('¿Qué tipo de prueba es común en la selección?', 'medium', '{"a": "Psicotécnica", "b": "Prueba de productos", "c": "Evaluación de inventarios"}', 'a'),[m
[32m+[m[32m('¿Qué factor influye en la selección de personal?', 'hard', '{"a": "Experiencia previa", "b": "Ubicación geográfica", "c": "Color de uniforme"}', 'a'),[m
[32m+[m
[32m+[m[32m-- Trivia de Clima Organizacional[m
[32m+[m[32m('¿Qué evalúa el clima organizacional?', 'easy', '{"a": "Ambiente laboral", "b": "Calidad del producto", "c": "Eficiencia del software"}', 'a'),[m
[32m+[m[32m('¿Qué afecta el clima organizacional?', 'medium', '{"a": "Relaciones interpersonales", "b": "Registros contables", "c": "Sistema operativo"}', 'a'),[m
[32m+[m[32m('¿Qué herramienta se usa para medir el clima?', 'hard', '{"a": "Encuestas internas", "b": "Auditorías externas", "c": "Registros de ventas"}', 'a'),[m
[32m+[m
[32m+[m[32m-- Trivia sobre Capacitación y Desarrollo[m
[32m+[m[32m('¿Qué es la capacitación laboral?', 'easy', '{"a": "Entrenamiento de empleados", "b": "Análisis de mercado", "c": "Evaluación de clientes"}', 'a'),[m
[32m+[m[32m('¿Qué objetivo tiene la capacitación?', 'medium', '{"a": "Mejorar habilidades", "b": "Reducir costos", "c": "Aumentar inventarios"}', 'a'),[m
[32m+[m[32m('¿Qué método es común en la capacitación?', 'hard', '{"a": "Cursos presenciales", "b": "Reducción de horarios", "c": "Reorganización de equipos"}', 'a');[m
[1mdiff --git a/Resource_Sql/insert_trivias.sql b/Resource_Sql/insert_trivias.sql[m
[1mnew file mode 100644[m
[1mindex 0000000..ec18a01[m
[1m--- /dev/null[m
[1m+++ b/Resource_Sql/insert_trivias.sql[m
[36m@@ -0,0 +1,13 @@[m
[32m+[m[32mINSERT INTO public.trivias_trivia (name, description, creator_id, created_at)[m
[32m+[m[32mVALUES[m
[32m+[m[32m('Trivia de Introducción a Recursos Humanos', 'Trivia introductoria sobre conceptos básicos de recursos humanos.', 1, NOW()),[m
[32m+[m[32m('Trivia sobre Entrevistas de Trabajo', 'Preguntas sobre estrategias y mejores prácticas en entrevistas laborales.', 1, NOW()),[m
[32m+[m[32m('Trivia de Normativas Laborales', 'Trivia sobre las leyes laborales más importantes.', 2, NOW()),[m
[32m+[m[32m('Trivia de Evaluaciones de Desempeño', 'Preguntas sobre el proceso de evaluación del desempeño de los empleados.', 3, NOW()),[m
[32m+[m[32m('Trivia sobre Selección de Personal', 'Preguntas relacionadas con técnicas y criterios de selección de candidatos.', 1, NOW()),[m
[32m+[m[32m('Trivia de Clima Organizacional', 'Explora conceptos relacionados con el ambiente laboral y su impacto.', 2, NOW()),[m
[32m+[m[32m('Trivia sobre Capacitación y Desarrollo', 'Trivia enfocada en métodos de capacitación y desarrollo profesional.', 3, NOW()),[m
[32m+[m[32m('Trivia sobre Motivación Laboral', 'Trivia que explora teorías y prácticas para motivar a los empleados.', 1, NOW()),[m
[32m+[m[32m('Trivia de Liderazgo Organizacional', 'Preguntas sobre estilos y teorías de liderazgo en las empresas.', 2, NOW()),[m
[32m+[m[32m('Trivia sobre Resolución de Conflictos', 'Explora estrategias para manejar conflictos laborales.', 3, NOW());[m
[32m+[m

[33mcommit b984356f72e7744b44ebd8301677bef4decf8ad8[m
Merge: abf73b7 914c5af
Author: Hector Cano <123791914+HectorCano1411@users.noreply.github.com>
Date:   Mon Nov 25 19:53:20 2024 -0300

    Merge pull request #6 from HectorCano1411/devHC2
    
    feat: Update views, models, and URLs across

[33mcommit 914c5af3f43bc838d4b16f8ec16cdc8b25db711f[m[33m ([m[1;31morigin/devHC2[m[33m, [m[1;32mdevHC2[m[33m)[m
Author: Hector Cano <hectorcanolealestudios@gmail.com>
Date:   Mon Nov 25 19:48:28 2024 -0300

    feat: Update views, models, and URLs across
    various apps; modify settings and requirements
    
    - Updated `views.py` files in ranking, trivias, and users apps.
    - Modified `models.py` in users app.
    - Updated settings and URLs in `tala_trivia`.
    - Updated `requirements.txt`.
    - Added missing migration and template files in users and trivias.

[1mdiff --git a/questions/__pycache__/views.cpython-313.pyc b/questions/__pycache__/views.cpython-313.pyc[m
[1mindex 9958357..114611e 100644[m
Binary files a/questions/__pycache__/views.cpython-313.pyc and b/questions/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/ranking/__pycache__/admin.cpython-313.pyc b/ranking/__pycache__/admin.cpython-313.pyc[m
[1mindex 0a730da..e906de0 100644[m
Binary files a/ranking/__pycache__/admin.cpython-313.pyc and b/ranking/__pycache__/admin.cpython-313.pyc differ
[1mdiff --git a/ranking/__pycache__/models.cpython-313.pyc b/ranking/__pycache__/models.cpython-313.pyc[m
[1mindex 140f5f2..7b0e8e9 100644[m
Binary files a/ranking/__pycache__/models.cpython-313.pyc and b/ranking/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/ranking/__pycache__/urls.cpython-313.pyc b/ranking/__pycache__/urls.cpython-313.pyc[m
[1mindex 363a2ed..6563052 100644[m
Binary files a/ranking/__pycache__/urls.cpython-313.pyc and b/ranking/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/ranking/__pycache__/views.cpython-313.pyc b/ranking/__pycache__/views.cpython-313.pyc[m
[1mindex 69f8eb8..a19b7f5 100644[m
Binary files a/ranking/__pycache__/views.cpython-313.pyc and b/ranking/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/ranking/views.py b/ranking/views.py[m
[1mindex 75ea077..5095454 100644[m
[1m--- a/ranking/views.py[m
[1m+++ b/ranking/views.py[m
[36m@@ -1,18 +1,24 @@[m
[32m+[m[32mfrom argparse import Action[m
[32m+[m[32mfrom drf_yasg.utils import swagger_auto_schema # type: ignore[m
 from rest_framework import viewsets[m
[31m-from rest_framework.decorators import action[m
 from rest_framework.response import Response[m
 from django.shortcuts import get_object_or_404[m
 from .serializers import RankingSerializer[m
[31m-from .models import Ranking, Trivia  # Importa el modelo Trivia si es necesario[m
[32m+[m[32mfrom .models import Ranking, Trivia[m
 [m
 class RankingViewSet(viewsets.ModelViewSet):[m
     queryset = Ranking.objects.all()[m
     serializer_class = RankingSerializer[m
 [m
[31m-    @action(detail=True, methods=['get'])[m
[32m+[m[32m    @swagger_auto_schema([m
[32m+[m[32m        tags=['Rankings'],  # Usa 'Rankings' como tag[m
[32m+[m[32m        operation_description="Obtiene el ranking de una trivia específica, ordenado por puntajes."[m
[32m+[m[32m    )[m
     def get_ranking(self, request, pk=None):[m
[31m-        # Obtener la trivia relacionada utilizando el modelo Trivia[m
[31m-        trivia = get_object_or_404(Trivia, pk=pk)  # `pk` se refiere al ID de la trivia en la URL[m
[32m+[m[32m        """[m
[32m+[m[32m        Obtiene el ranking de una trivia específica, ordenado por puntajes.[m
[32m+[m[32m        """[m
[32m+[m[32m        trivia = get_object_or_404(Trivia, pk=pk)[m
         rankings = Ranking.objects.filter(trivia=trivia).order_by('-score')[m
         [m
         # Serializar los rankings filtrados[m
[36m@@ -20,11 +26,15 @@[m [mclass RankingViewSet(viewsets.ModelViewSet):[m
         [m
         # Responder con los datos serializados[m
         return Response(serializer.data)[m
[31m-    [m
[31m-    # Nuevo endpoint para obtener el ranking de todas las trivias[m
[31m-    @action(detail=False, methods=['get'])[m
[32m+[m
[32m+[m[32m    @swagger_auto_schema([m
[32m+[m[32m        tags=['Rankings'],  # Usa 'Rankings' como tag[m
[32m+[m[32m        operation_description="Obtiene el ranking global de todas las trivias, ordenado por puntajes."[m
[32m+[m[32m    )[m
     def get_all_rankings(self, request):[m
[31m-        # Obtener todos los rankings, sin filtrar por trivia[m
[32m+[m[32m        """[m
[32m+[m[32m        Obtiene el ranking global de todas las trivias, ordenado por puntajes.[m
[32m+[m[32m        """[m
         rankings = Ranking.objects.all().order_by('-score')[m
         [m
         # Serializar todos los rankings[m
[36m@@ -32,37 +42,3 @@[m [mclass RankingViewSet(viewsets.ModelViewSet):[m
         [m
         # Responder con los rankings de todas las trivias[m
         return Response(serializer.data)[m
[31m-[m
[31m-[m
[31m-# from rest_framework import viewsets[m
[31m-# from .serializers import RankingSerializer[m
[31m-# from rest_framework.decorators import action[m
[31m-# from rest_framework.response import Response[m
[31m-# from .models import Ranking[m
[31m-[m
[31m-# class RankingViewSet(viewsets.ModelViewSet):[m
[31m-#     queryset = Ranking.objects.all()[m
[31m-#     serializer_class = RankingSerializer[m
[31m-[m
[31m-#     @action(detail=True, methods=['get'])[m
[31m-#     def get_ranking(self, request, pk=None):[m
[31m-#         trivia = self.get_object()  # Obtiene la trivia con pk[m
[31m-        [m
[31m-#         # Filtros opcionales[m
[31m-#         score_min = request.query_params.get('score_min')  # Filtro de puntaje mínimo[m
[31m-#         user_id = request.query_params.get('user_id')  # Filtro por usuario[m
[31m-        [m
[31m-#         # Filtrar por puntaje mínimo[m
[31m-#         rankings = Ranking.objects.filter(trivia=trivia)[m
[31m-#         if score_min:[m
[31m-#             rankings = rankings.filter(score__gte=score_min)  # Filtra por puntaje mínimo[m
[31m-[m
[31m-#         # Filtrar por un usuario específico[m
[31m-#         if user_id:[m
[31m-#             rankings = rankings.filter(user_id=user_id)  # Filtra por ID de usuario[m
[31m-[m
[31m-#         # Ordenar por puntaje descendente (ya está por defecto, pero se puede cambiar)[m
[31m-#         rankings = rankings.order_by('-score')[m
[31m-        [m
[31m-#         serializer = RankingSerializer(rankings, many=True)[m
[31m-#         return Response(serializer.data)[m
[1mdiff --git a/requirements.txt b/requirements.txt[m
[1mindex be8b737..ac1c988 100644[m
[1m--- a/requirements.txt[m
[1m+++ b/requirements.txt[m
[36m@@ -1,16 +1,13 @@[m
 asgiref==3.8.1[m
[31m-Django==5.1.3[m
[32m+[m[32mbeautifulsoup4==4.12.3[m
[32m+[m[32mDjango==4.2.16[m
[32m+[m[32mdjango-bootstrap-v5==1.0.11[m
 django-cors-headers==4.6.0[m
[31m-django-extensions==3.2.3[m
[32m+[m[32mdjango-filter==24.3[m
 djangorestframework==3.15.2[m
 djangorestframework-simplejwt==5.3.1[m
[31m-drf-yasg==1.21.8[m
[31m-inflection==0.5.1[m
[31m-packaging==24.2[m
 psycopg2-binary==2.9.10[m
 PyJWT==2.10.0[m
[31m-pytz==2024.2[m
[31m-PyYAML==6.0.2[m
[32m+[m[32msoupsieve==2.6[m
 sqlparse==0.5.2[m
 tzdata==2024.2[m
[31m-uritemplate==4.1.1[m
[1mdiff --git a/tala_trivia/__pycache__/settings.cpython-313.pyc b/tala_trivia/__pycache__/settings.cpython-313.pyc[m
[1mindex 8669550..7f638b9 100644[m
Binary files a/tala_trivia/__pycache__/settings.cpython-313.pyc and b/tala_trivia/__pycache__/settings.cpython-313.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/urls.cpython-313.pyc b/tala_trivia/__pycache__/urls.cpython-313.pyc[m
[1mindex d25cc95..e65018b 100644[m
Binary files a/tala_trivia/__pycache__/urls.cpython-313.pyc and b/tala_trivia/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/tala_trivia/settings.py b/tala_trivia/settings.py[m
[1mindex 1b86ce2..c9b39ae 100644[m
[1m--- a/tala_trivia/settings.py[m
[1m+++ b/tala_trivia/settings.py[m
[36m@@ -91,7 +91,6 @@[m [mMIDDLEWARE = [[m
 ][m
 [m
 CORS_ALLOWED_ORIGINS = [[m
[31m-    "http://localhost:3000",  # Si estás usando un frontend en React[m
     "http://localhost:8000",  # Si necesitas que Django acepte solicitudes desde su propio dominio[m
 ][m
 [m
[36m@@ -129,6 +128,10 @@[m [mTEMPLATES = [[m
     },[m
 ][m
 [m
[32m+[m[32mLOGIN_REDIRECT_URL = '/'[m
[32m+[m[32mLOGOUT_REDIRECT_URL = '/'[m
[32m+[m
[32m+[m
 WSGI_APPLICATION = 'tala_trivia.wsgi.application'[m
 AUTH_USER_MODEL = 'users.CustomUser'[m
 [m
[1mdiff --git a/tala_trivia/urls.py b/tala_trivia/urls.py[m
[1mindex c5d5ccb..8b8acd9 100644[m
[1m--- a/tala_trivia/urls.py[m
[1m+++ b/tala_trivia/urls.py[m
[36m@@ -22,6 +22,9 @@[m [mschema_view = get_schema_view([m
 urlpatterns = [[m
     # Admin[m
     path("admin/", admin.site.urls),[m
[32m+[m[41m    [m
[32m+[m[32m    # Root redirige a users.urls[m
[32m+[m[32m    path("", include("users.urls")),  # Página de inicio[m
 [m
     # Auth (Login & Tokens)[m
     path([m
[1mdiff --git a/trivias/__pycache__/models.cpython-313.pyc b/trivias/__pycache__/models.cpython-313.pyc[m
[1mindex 6f016f5..2d4699a 100644[m
Binary files a/trivias/__pycache__/models.cpython-313.pyc and b/trivias/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/urls.cpython-313.pyc b/trivias/__pycache__/urls.cpython-313.pyc[m
[1mindex ab31c3e..2cc024d 100644[m
Binary files a/trivias/__pycache__/urls.cpython-313.pyc and b/trivias/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/views.cpython-313.pyc b/trivias/__pycache__/views.cpython-313.pyc[m
[1mindex 05ace9b..c58b493 100644[m
Binary files a/trivias/__pycache__/views.cpython-313.pyc and b/trivias/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/trivias/templates/list.html b/trivias/templates/list.html[m
[1mnew file mode 100644[m
[1mindex 0000000..6575e34[m
[1m--- /dev/null[m
[1m+++ b/trivias/templates/list.html[m
[36m@@ -0,0 +1,62 @@[m
[32m+[m[32m<!-- templates/trivias/list.html -->[m
[32m+[m[32m<!DOCTYPE html>[m
[32m+[m[32m<html lang="es">[m
[32m+[m[32m<head>[m
[32m+[m[32m    <meta charset="UTF-8">[m
[32m+[m[32m    <meta name="viewport" content="width=device-width, initial-scale=1.0">[m
[32m+[m[32m    <title>Listado de Trivias</title>[m
[32m+[m[32m    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">[m
[32m+[m[32m</head>[m
[32m+[m[32m<body>[m
[32m+[m[32m    <div class="container">[m
[32m+[m[32m        <h1 class="mt-5">Listado de Trivias</h1>[m
[32m+[m[32m        <div id="trivias-list" class="row">[m
[32m+[m[32m            <!-- Aquí se cargarán las trivias -->[m
[32m+[m[32m        </div>[m
[32m+[m[32m    </div>[m
[32m+[m
[32m+[m[32m    <script>[m
[32m+[m[32m        // Usamos Fetch API para obtener las trivias desde el backend[m
[32m+[m[32m        fetch('/api/trivias/')  // Endpoint correcto[m
[32m+[m[32m            .then(response => {[m
[32m+[m[32m                if (!response.ok) {[m
[32m+[m[32m                    throw new Error('Error al obtener las trivias.');[m
[32m+[m[32m                }[m
[32m+[m[32m                return response.json();[m
[32m+[m[32m            })[m
[32m+[m[32m            .then(data => {[m
[32m+[m[32m                const triviasList = document.getElementById('trivias-list');[m
[32m+[m[41m                [m
[32m+[m[32m                if (data.length === 0) {[m
[32m+[m[32m                    triviasList.innerHTML = '<p>No hay trivias disponibles.</p>';[m
[32m+[m[32m                    return;[m
[32m+[m[32m                }[m
[32m+[m[41m    [m
[32m+[m[32m                data.forEach(trivia => {[m
[32m+[m[32m                    const triviaElement = document.createElement('div');[m
[32m+[m[32m                    triviaElement.classList.add('col-md-4');[m
[32m+[m[32m                    triviaElement.innerHTML = `[m
[32m+[m[32m                        <div class="card mb-3">[m
[32m+[m[32m                            <div class="card-body">[m
[32m+[m[32m                                <h5 class="card-title">${trivia.name}</h5>[m
[32m+[m[32m                                <p class="card-text">${trivia.description}</p>[m
[32m+[m[32m                                <button class="btn btn-primary" onclick="participateTrivia(${trivia.id})">Participar</button>[m
[32m+[m[32m                            </div>[m
[32m+[m[32m                        </div>[m
[32m+[m[32m                    `;[m
[32m+[m[32m                    triviasList.appendChild(triviaElement);[m
[32m+[m[32m                });[m
[32m+[m[32m            })[m
[32m+[m[32m            .catch(error => {[m
[32m+[m[32m                console.error('Error:', error);[m
[32m+[m[32m                const triviasList = document.getElementById('trivias-list');[m
[32m+[m[32m                triviasList.innerHTML = '<p>Error al cargar las trivias.</p>';[m
[32m+[m[32m            });[m
[32m+[m[41m    [m
[32m+[m[32m        function participateTrivia(triviaId) {[m
[32m+[m[32m            window.location.href = `/trivias/${triviaId}/participate`;  // Redirige a la página de participación de la trivia[m
[32m+[m[32m        }[m
[32m+[m[32m    </script>[m
[32m+[m[41m    [m
[32m+[m[32m</body>[m
[32m+[m[32m</html>[m
[1mdiff --git a/trivias/templates/participate.html b/trivias/templates/participate.html[m
[1mnew file mode 100644[m
[1mindex 0000000..89b39ce[m
[1m--- /dev/null[m
[1m+++ b/trivias/templates/participate.html[m
[36m@@ -0,0 +1,58 @@[m
[32m+[m[32m<!-- templates/trivias/participate.html -->[m
[32m+[m[32m<!DOCTYPE html>[m
[32m+[m[32m<html lang="es">[m
[32m+[m[32m<head>[m
[32m+[m[32m    <meta charset="UTF-8">[m
[32m+[m[32m    <meta name="viewport" content="width=device-width, initial-scale=1.0">[m
[32m+[m[32m    <title>Participar en Trivia</title>[m
[32m+[m[32m    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">[m
[32m+[m[32m</head>[m
[32m+[m[32m<body>[m
[32m+[m[32m    <div class="container">[m
[32m+[m[32m        <h1 class="mt-5">Participar en Trivia: {{ trivia.name }}</h1>[m
[32m+[m[32m        <form id="trivia-form" method="POST">[m
[32m+[m[32m            {% csrf_token %}[m
[32m+[m[32m            <div id="questions-list">[m
[32m+[m[32m                <!-- Aquí se cargarán las preguntas de la trivia -->[m
[32m+[m[32m                {% for question in questions %}[m
[32m+[m[32m                    <div class="form-group">[m
[32m+[m[32m                        <label for="question{{ question.id }}">{{ question.question_text }}</label>[m
[32m+[m[32m                        <input type="text" class="form-control" id="question{{ question.id }}" name="answers[{{ question.id }}]" required>[m
[32m+[m[32m                    </div>[m
[32m+[m[32m                {% endfor %}[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <button type="submit" class="btn btn-primary">Enviar respuestas</button>[m
[32m+[m[32m        </form>[m
[32m+[m[32m    </div>[m
[32m+[m
[32m+[m[32m    <script>[m
[32m+[m[32m        // Manejo del envío del formulario[m
[32m+[m[32m        document.getElementById('trivia-form').addEventListener('submit', function(e) {[m
[32m+[m[32m            e.preventDefault();[m
[32m+[m
[32m+[m[32m            const formData = new FormData(this);[m
[32m+[m[32m            const answers = {};[m
[32m+[m[32m            formData.forEach((value, key) => {[m
[32m+[m[32m                const [field, questionId] = key.split('[');[m
[32m+[m[32m                answers[questionId.slice(0, -1)] = value;[m
[32m+[m[32m            });[m
[32m+[m
[32m+[m[32m            // Enviar respuestas al servidor[m
[32m+[m[32m            fetch(`/api/trivias/{{ trivia.id }}/submit_answers/`, {[m
[32m+[m[32m                method: 'POST',[m
[32m+[m[32m                headers: {[m
[32m+[m[32m                    'Content-Type': 'application/json',[m
[32m+[m[32m                },[m
[32m+[m[32m                body: JSON.stringify({ answers })[m
[32m+[m[32m            })[m
[32m+[m[32m            .then(response => response.json())[m
[32m+[m[32m            .then(data => {[m
[32m+[m[32m                alert('Puntaje: ' + data.score);[m
[32m+[m[32m            })[m
[32m+[m[32m            .catch(error => {[m
[32m+[m[32m                alert('Error al enviar las respuestas.');[m
[32m+[m[32m            });[m
[32m+[m[32m        });[m
[32m+[m[32m    </script>[m
[32m+[m[32m</body>[m
[32m+[m[32m</html>[m
[1mdiff --git a/trivias/templates/participations/list.html b/trivias/templates/participations/list.html[m
[1mnew file mode 100644[m
[1mindex 0000000..8ca1048[m
[1m--- /dev/null[m
[1m+++ b/trivias/templates/participations/list.html[m
[36m@@ -0,0 +1,38 @@[m
[32m+[m[32m<!-- templates/participations/list.html -->[m
[32m+[m[32m<!DOCTYPE html>[m
[32m+[m[32m<html lang="es">[m
[32m+[m[32m<head>[m
[32m+[m[32m    <meta charset="UTF-8">[m
[32m+[m[32m    <meta name="viewport" content="width=device-width, initial-scale=1.0">[m
[32m+[m[32m    <title>Mis Participaciones</title>[m
[32m+[m[32m    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">[m
[32m+[m[32m</head>[m
[32m+[m[32m<body>[m
[32m+[m[32m    <div class="container">[m
[32m+[m[32m        <h1 class="mt-5">Mis Participaciones</h1>[m
[32m+[m[32m        <div id="participations-list">[m
[32m+[m[32m            <!-- Aquí se cargarán las participaciones del usuario -->[m
[32m+[m[32m        </div>[m
[32m+[m[32m    </div>[m
[32m+[m
[32m+[m[32m    <script>[m
[32m+[m[32m        // Usamos Fetch API para obtener las participaciones del usuario[m
[32m+[m[32m        fetch('/api/participations/')  // Este endpoint debería devolver las participaciones del usuario autenticado[m
[32m+[m[32m            .then(response => response.json())[m
[32m+[m[32m            .then(data => {[m
[32m+[m[32m                const participationsList = document.getElementById('participations-list');[m
[32m+[m[32m                data.forEach(participation => {[m
[32m+[m[32m                    const participationElement = document.createElement('div');[m
[32m+[m[32m                    participationElement.classList.add('card', 'mb-3');[m
[32m+[m[32m                    participationElement.innerHTML = `[m
[32m+[m[32m                        <div class="card-body">[m
[32m+[m[32m                            <h5 class="card-title">${participation.trivia.name}</h5>[m
[32m+[m[32m                            <p class="card-text">Puntaje: ${participation.score}</p>[m
[32m+[m[32m                        </div>[m
[32m+[m[32m                    `;[m
[32m+[m[32m                    participationsList.appendChild(participationElement);[m
[32m+[m[32m                });[m
[32m+[m[32m            });[m
[32m+[m[32m    </script>[m
[32m+[m[32m</body>[m
[32m+[m[32m</html>[m
[1mdiff --git a/trivias/views.py b/trivias/views.py[m
[1mindex f8b52d8..1975b96 100644[m
[1m--- a/trivias/views.py[m
[1m+++ b/trivias/views.py[m
[36m@@ -11,6 +11,11 @@[m [mfrom rest_framework import viewsets, status[m
 from rest_framework.permissions import IsAuthenticated[m
 from .permissions import IsAdminUserOrCreatorOrReadOnly[m
 [m
[32m+[m[32mfrom django.shortcuts import render[m
[32m+[m[32m# Vista para mostrar el listado de trivias[m
[32m+[m[32mdef trivia_list(request):[m
[32m+[m[32m    trivias = Trivia.objects.all()  # Obtén las trivias de la base de datos[m
[32m+[m[32m    return render(request, 'trivias/list.html', {'trivias': trivias})[m
 [m
 [m
 class TriviaViewSet(viewsets.ModelViewSet):[m
[1mdiff --git a/users/__pycache__/models.cpython-313.pyc b/users/__pycache__/models.cpython-313.pyc[m
[1mindex ed7d96a..16f28a4 100644[m
Binary files a/users/__pycache__/models.cpython-313.pyc and b/users/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/users/__pycache__/urls.cpython-313.pyc b/users/__pycache__/urls.cpython-313.pyc[m
[1mindex e3f204f..bdf9900 100644[m
Binary files a/users/__pycache__/urls.cpython-313.pyc and b/users/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/users/__pycache__/views.cpython-313.pyc b/users/__pycache__/views.cpython-313.pyc[m
[1mindex 7beac3d..00dc7c2 100644[m
Binary files a/users/__pycache__/views.cpython-313.pyc and b/users/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/users/migrations/0004_customuser_role.py b/users/migrations/0004_customuser_role.py[m
[1mnew file mode 100644[m
[1mindex 0000000..a189cd5[m
[1m--- /dev/null[m
[1m+++ b/users/migrations/0004_customuser_role.py[m
[36m@@ -0,0 +1,18 @@[m
[32m+[m[32m# Generated by Django 5.1.3 on 2024-11-25 16:54[m
[32m+[m
[32m+[m[32mfrom django.db import migrations, models[m
[32m+[m
[32m+[m
[32m+[m[32mclass Migration(migrations.Migration):[m
[32m+[m
[32m+[m[32m    dependencies = [[m
[32m+[m[32m        ('users', '0003_remove_customuser_role'),[m
[32m+[m[32m    ][m
[32m+[m
[32m+[m[32m    operations = [[m
[32m+[m[32m        migrations.AddField([m
[32m+[m[32m            model_name='customuser',[m
[32m+[m[32m            name='role',[m
[32m+[m[32m            field=models.CharField(blank=True, default='jugador', max_length=20, null=True),[m
[32m+[m[32m        ),[m
[32m+[m[32m    ][m
[1mdiff --git a/users/migrations/__pycache__/0003_remove_customuser_role.cpython-313.pyc b/users/migrations/__pycache__/0003_remove_customuser_role.cpython-313.pyc[m
[1mindex 1256359..143ceb3 100644[m
Binary files a/users/migrations/__pycache__/0003_remove_customuser_role.cpython-313.pyc and b/users/migrations/__pycache__/0003_remove_customuser_role.cpython-313.pyc differ
[1mdiff --git a/users/migrations/__pycache__/0004_customuser_role.cpython-313.pyc b/users/migrations/__pycache__/0004_customuser_role.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..0abfa00[m
Binary files /dev/null and b/users/migrations/__pycache__/0004_customuser_role.cpython-313.pyc differ
[1mdiff --git a/users/models.py b/users/models.py[m
[1mindex db1f3c1..641bd3f 100644[m
[1m--- a/users/models.py[m
[1m+++ b/users/models.py[m
[36m@@ -2,7 +2,7 @@[m [mfrom django.contrib.auth.models import AbstractUser, Group, Permission[m
 from django.db import models[m
 [m
 class CustomUser(AbstractUser):[m
[31m-    # Define related_name para evitar conflictos[m
[32m+[m[32m    role = models.CharField(max_length=20, null=True, blank=True, default='jugador')[m
     groups = models.ManyToManyField([m
         Group,[m
         related_name="customuser_set",  # Cambiar a algo único[m
[36m@@ -17,19 +17,14 @@[m [mclass CustomUser(AbstractUser):[m
         help_text="Specific permissions for this user.",[m
         verbose_name="user permissions",[m
     )[m
[31m-    def assign_role(self, role_name):[m
[31m-        group, created = Group.objects.get_or_create(name=role_name)[m
[31m-        self.groups.add(group)[m
[31m-        self.save()[m
[31m- [m
[31m-    [m
[32m+[m
     def assign_role(self, role_name):[m
         """Asigna un rol (grupo) al usuario."""[m
         # Obtener o crear el grupo basado en el nombre del rol[m
         group, created = Group.objects.get_or_create(name=role_name)[m
         # Asignar el grupo al usuario[m
         self.groups.add(group)[m
[31m-        self.role = role_name  # Sincroniza el campo role[m
[32m+[m[32m        self.role = role_name  # Asignamos el rol al campo 'role'[m
         self.save()[m
 [m
     def is_admin(self):[m
[1mdiff --git a/users/templates/home.html b/users/templates/home.html[m
[1mnew file mode 100644[m
[1mindex 0000000..9b2833f[m
[1m--- /dev/null[m
[1m+++ b/users/templates/home.html[m
[36m@@ -0,0 +1,211 @@[m
[32m+[m[32m<!DOCTYPE html>[m
[32m+[m[32m<html lang="en">[m
[32m+[m[32m<head>[m
[32m+[m[32m    <meta charset="UTF-8">[m
[32m+[m[32m    <meta name="viewport" content="width=device-width, initial-scale=1.0">[m
[32m+[m[32m    <title>Tala Trivia</title>[m
[32m+[m[32m    <!-- Bootstrap CSS -->[m
[32m+[m[32m    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">[m
[32m+[m[32m</head>[m
[32m+[m[32m<body>[m
[32m+[m[32m    <!-- Navbar -->[m
[32m+[m[32m    <nav class="navbar navbar-expand-lg navbar-light bg-light">[m
[32m+[m[32m        <div class="container-fluid">[m
[32m+[m[32m            <a class="navbar-brand" href="#">Tala Trivia</a>[m
[32m+[m[32m            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">[m
[32m+[m[32m                <span class="navbar-toggler-icon"></span>[m
[32m+[m[32m            </button>[m
[32m+[m[32m            <div class="collapse navbar-collapse" id="navbarNav">[m
[32m+[m[32m                <ul class="navbar-nav ms-auto">[m
[32m+[m[32m                    <li class="nav-item">[m
[32m+[m[32m                        <button class="btn btn-primary me-2" data-bs-toggle="modal" data-bs-target="#loginModal">Login</button>[m
[32m+[m[32m                        <button class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#registerModal">Registro</button>[m
[32m+[m[32m                    </li>[m
[32m+[m[32m                </ul>[m
[32m+[m[32m            </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m    </nav>[m
[32m+[m
[32m+[m[32m    <!-- Modal Login -->[m
[32m+[m[32m    <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">[m
[32m+[m[32m        <div class="modal-dialog">[m
[32m+[m[32m            <div class="modal-content">[m
[32m+[m[32m                <div class="modal-header">[m
[32m+[m[32m                    <h5 class="modal-title" id="loginModalLabel">Login</h5>[m
[32m+[m[32m                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>[m
[32m+[m[32m                </div>[m
[32m+[m[32m                <div class="modal-body">[m
[32m+[m[32m                    <form id="loginForm">[m
[32m+[m[32m                        <div class="mb-3">[m
[32m+[m[32m                            <label for="username" class="form-label">Username</label>[m
[32m+[m[32m                            <input type="text" class="form-control" id="username" name="username" required>[m
[32m+[m[32m                        </div>[m
[32m+[m[32m                        <div class="mb-3">[m
[32m+[m[32m                            <label for="password" class="form-label">Password</label>[m
[32m+[m[32m                            <input type="password" class="form-control" id="password" name="password" required>[m
[32m+[m[32m                        </div>[m
[32m+[m[32m                        <button type="submit" class="btn btn-primary w-100">Login</button>[m
[32m+[m[32m                    </form>[m
[32m+[m[32m                </div>[m
[32m+[m[32m            </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m    </div>[m
[32m+[m
[32m+[m[32m    <!-- Modal Register -->[m
[32m+[m[32m    <div class="modal fade" id="registerModal" tabindex="-1" aria-labelledby="registerModalLabel" aria-hidden="true">[m
[32m+[m[32m        <div class="modal-dialog">[m
[32m+[m[32m            <div class="modal-content">[m
[32m+[m[32m                <div class="modal-header">[m
[32m+[m[32m                    <h5 class="modal-title" id="registerModalLabel">Registro</h5>[m
[32m+[m[32m                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>[m
[32m+[m[32m                </div>[m
[32m+[m[32m                <div class="modal-body">[m
[32m+[m[32m                    <form id="registerForm">[m
[32m+[m[32m                        <div class="mb-3">[m
[32m+[m[32m                            <label for="regUsername" class="form-label">Username</label>[m
[32m+[m[32m                            <input type="text" class="form-control" id="regUsername" name="username" required>[m
[32m+[m[32m                        </div>[m
[32m+[m[32m                        <div class="mb-3">[m
[32m+[m[32m                            <label for="regEmail" class="form-label">Email</label>[m
[32m+[m[32m                            <input type="email" class="form-control" id="regEmail" name="email" required>[m
[32m+[m[32m                        </div>[m
[32m+[m[32m                        <div class="mb-3">[m
[32m+[m[32m                            <label for="regPassword" class="form-label">Password</label>[m
[32m+[m[32m                            <input type="password" class="form-control" id="regPassword" name="password" required>[m
[32m+[m[32m                        </div>[m
[32m+[m[32m                        <button type="submit" class="btn btn-success w-100">Registrarse</button>[m
[32m+[m[32m                    </form>[m
[32m+[m[32m                </div>[m
[32m+[m[32m            </div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m    </div>[m
[32m+[m
[32m+[m[32m    <!-- Bootstrap JS -->[m
[32m+[m[32m    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>[m
[32m+[m[32m    <script>[m
[32m+[m[32m        // Inicio de sesión[m
[32m+[m[32m    document.getElementById('loginForm').addEventListener('submit', async (e) => {[m
[32m+[m[32m        e.preventDefault();[m
[32m+[m[32m        const username = document.getElementById('username').value;[m
[32m+[m[32m        const password = document.getElementById('password').value;[m
[32m+[m
[32m+[m[32m        try {[m
[32m+[m[32m            const response = await fetch('/api/users/login/', {[m
[32m+[m[32m                method: 'POST',[m
[32m+[m[32m                headers: { 'Content-Type': 'application/json' },[m
[32m+[m[32m                body: JSON.stringify({ username, password }),[m
[32m+[m[32m            });[m
[32m+[m
[32m+[m[32m            if (response.ok) {[m
[32m+[m[32m                const data = await response.json();[m
[32m+[m[32m                alert('Inicio de sesión exitoso.');[m
[32m+[m
[32m+[m[32m                // Guardar los tokens en el localStorage[m
[32m+[m[32m                localStorage.setItem('access_token', data.access); // Token de acceso[m
[32m+[m[32m                localStorage.setItem('role', data.role); // Rol del usuario[m
[32m+[m
[32m+[m[32m                // Redirigir al listado de trivias si el rol es 'jugador'[m
[32m+[m[32m                if (data.role === 'jugador') {[m
[32m+[m[32m                    window.location.href = '/api/trivias/list/'; // Ruta que sirve el archivo list.html[m
[32m+[m[32m                } else {[m
[32m+[m[32m                    // Si no es jugador, redirigir según el rol[m
[32m+[m[32m                    window.location.href = '/home'; // Ruta para otros roles, como administrador[m
[32m+[m[32m                }[m
[32m+[m[32m            } else {[m
[32m+[m[32m                const error = await response.json();[m
[32m+[m[32m                alert(`Error: ${error.detail}`);[m
[32m+[m[32m            }[m
[32m+[m[32m        } catch (err) {[m
[32m+[m[32m            console.error('Error al iniciar sesión:', err);[m
[32m+[m[32m            alert('Error en la conexión al servidor.');[m
[32m+[m[32m        }[m
[32m+[m[32m    });[m
[32m+[m
[32m+[m[32m    // Función para cargar las trivias en list.html[m
[32m+[m[32m    async function loadTrivias() {[m
[32m+[m[32m        const triviasList = document.getElementById('trivias-list');[m
[32m+[m
[32m+[m[32m        try {[m
[32m+[m[32m            const response = await fetch('http://localhost:8000/api/trivias/', {[m
[32m+[m[32m                headers: {[m
[32m+[m[32m                    'Authorization': `Bearer ${localStorage.getItem('access_token')}`, // Agregar el token de autorización[m
[32m+[m[32m                    'Content-Type': 'application/json',[m
[32m+[m[32m                },[m
[32m+[m[32m            });[m
[32m+[m
[32m+[m[32m            if (response.ok) {[m
[32m+[m[32m                const data = await response.json();[m
[32m+[m
[32m+[m[32m                if (data.length === 0) {[m
[32m+[m[32m                    triviasList.innerHTML = '<p>No hay trivias disponibles.</p>';[m
[32m+[m[32m                    return;[m
[32m+[m[32m                }[m
[32m+[m
[32m+[m[32m                data.forEach(trivia => {[m
[32m+[m[32m                    const triviaElement = document.createElement('div');[m
[32m+[m[32m                    triviaElement.classList.add('col-md-4');[m
[32m+[m[32m                    triviaElement.innerHTML = `[m
[32m+[m[32m                        <div class="card mb-3">[m
[32m+[m[32m                            <div class="card-body">[m
[32m+[m[32m                                <h5 class="card-title">${trivia.name}</h5>[m
[32m+[m[32m                                <p class="card-text">${trivia.description}</p>[m
[32m+[m[32m                                <button class="btn btn-primary" onclick="participateTrivia(${trivia.id})">Participar</button>[m
[32m+[m[32m                            </div>[m
[32m+[m[32m                        </div>[m
[32m+[m[32m                    `;[m
[32m+[m[32m                    triviasList.appendChild(triviaElement);[m
[32m+[m[32m                });[m
[32m+[m[32m            } else {[m
[32m+[m[32m                throw new Error('No se pudieron cargar las trivias.');[m
[32m+[m[32m            }[m
[32m+[m[32m        } catch (err) {[m
[32m+[m[32m            console.error('Error al cargar las trivias:', err);[m
[32m+[m[32m            triviasList.innerHTML = '<p>Error al cargar las trivias.</p>';[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    // Función para redirigir a la participación de una trivia[m
[32m+[m[32m    function participateTrivia(triviaId) {[m
[32m+[m[32m        window.location.href = `/trivias/${triviaId}/participate`; // Redirigir al detalle de la trivia[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    // Si estamos en la página de trivias, cargar automáticamente las trivias[m
[32m+[m[32m    if (window.location.pathname === '/api/trivias/list/') {[m
[32m+[m[32m        loadTrivias();[m
[32m+[m[32m    }[m[41m        [m
[32m+[m[41m        [m
[32m+[m
[32m+[m[41m    [m
[32m+[m[32m        // Registro de usuario[m
[32m+[m[32m        document.getElementById('registerForm').addEventListener('submit', async (e) => {[m
[32m+[m[32m            e.preventDefault();[m
[32m+[m[32m            const username = document.getElementById('regUsername').value;[m
[32m+[m[32m            const email = document.getElementById('regEmail').value;[m
[32m+[m[32m            const password = document.getElementById('regPassword').value;[m
[32m+[m[41m    [m
[32m+[m[32m            try {[m
[32m+[m[32m                const response = await fetch('/api/users/register/', {[m
[32m+[m[32m                    method: 'POST',[m
[32m+[m[32m                    headers: { 'Content-Type': 'application/json' },[m
[32m+[m[32m                    body: JSON.stringify({ username, email, password }),[m
[32m+[m[32m                });[m
[32m+[m[41m    [m
[32m+[m[32m                if (response.ok) {[m
[32m+[m[32m                    alert('Registro exitoso. Ahora puedes iniciar sesión.');[m
[32m+[m[32m                    const registerModal = bootstrap.Modal.getInstance(document.getElementById('registerModal'));[m
[32m+[m[32m                    registerModal.hide();[m
[32m+[m[32m                    const loginModal = new bootstrap.Modal(document.getElementById('loginModal'));[m
[32m+[m[32m                    loginModal.show();[m
[32m+[m[32m                } else {[m
[32m+[m[32m                    const error = await response.json();[m
[32m+[m[32m                    alert(`Error: ${JSON.stringify(error)}`);[m
[32m+[m[32m                }[m
[32m+[m[32m            } catch (err) {[m
[32m+[m[32m                console.error('Error al registrarse:', err);[m
[32m+[m[32m                alert('Error en la conexión al servidor.');[m
[32m+[m[32m            }[m
[32m+[m[32m        });[m
[32m+[m[32m    </script>[m
[32m+[m[32m    </body>[m
[32m+[m[32m    </html>[m
[32m+[m[41m    [m
\ No newline at end of file[m
[1mdiff --git a/users/urls.py b/users/urls.py[m
[1mindex 7b6cab0..d4cea0f 100644[m
[1m--- a/users/urls.py[m
[1m+++ b/users/urls.py[m
[36m@@ -1,8 +1,10 @@[m
 from django.urls import path[m
[31m-from .views import RegisterView, LoginView, UserDeleteView, UserEditView, UserListView, delete_all_users[m
[32m+[m[32mfrom .views import HomeView, RegisterView, LoginView, UserDeleteView, UserEditView, UserListView, delete_all_users[m
 [m
 [m
 urlpatterns = [[m
[32m+[m[32m    path('', HomeView.as_view(), name='home'),  # Ruta para cargar home.html[m
[32m+[m
     path('register/', RegisterView.as_view(), name='register'),[m
     path('login/', LoginView.as_view(), name='login'),[m
     path('users/', UserListView.as_view(), name='user-list'),  # URL correcta para listar usuarios[m
[1mdiff --git a/users/views.py b/users/views.py[m
[1mindex 8048659..27f564a 100644[m
[1m--- a/users/views.py[m
[1m+++ b/users/views.py[m
[36m@@ -11,6 +11,21 @@[m [mfrom drf_yasg.utils import swagger_auto_schema # type: ignore[m
 from drf_yasg import openapi  # type: ignore[m
 from .models import CustomUser[m
 from .serializers import UserSerializer[m
[32m+[m[32mfrom django.views.generic import TemplateView[m
[32m+[m[32mfrom rest_framework import status, permissions[m
[32m+[m[32mfrom rest_framework import serializers[m
[32m+[m
[32m+[m[32mclass HomeView(TemplateView):[m
[32m+[m[32m    """Página de inicio"""[m
[32m+[m
[32m+[m[32m    template_name = "home.html"[m
[32m+[m
[32m+[m[32m    @swagger_auto_schema([m
[32m+[m[32m        operation_description="Mostrar la página de inicio",[m
[32m+[m[32m        responses={200: "Página de inicio cargada correctamente"}[m
[32m+[m[32m    )[m
[32m+[m[32m    def get(self, request, *args, **kwargs):[m
[32m+[m[32m        return super().get(request, *args, **kwargs)[m
 [m
 [m
 class UserViewSet(viewsets.ModelViewSet):[m
[36m@@ -19,6 +34,26 @@[m [mclass UserViewSet(viewsets.ModelViewSet):[m
     serializer_class = UserSerializer[m
     permission_classes = [IsAuthenticated][m
 [m
[32m+[m[32m    @swagger_auto_schema([m
[32m+[m[32m        operation_description="Operaciones CRUD para gestionar usuarios",[m
[32m+[m[32m        responses={[m
[32m+[m[32m            200: UserSerializer(many=True),[m
[32m+[m[32m            201: UserSerializer,[m
[32m+[m[32m            204: "Usuario eliminado"[m
[32m+[m[32m        }[m
[32m+[m[32m    )[m
[32m+[m[32m    def list(self, request, *args, **kwargs):[m
[32m+[m[32m        """Listar todos los usuarios"""[m
[32m+[m[32m        return super().list(request, *args, **kwargs)[m
[32m+[m
[32m+[m[32m    @swagger_auto_schema([m
[32m+[m[32m        operation_description="Crear un nuevo usuario",[m
[32m+[m[32m        request_body=UserSerializer,[m
[32m+[m[32m        responses={201: UserSerializer}[m
[32m+[m[32m    )[m
[32m+[m[32m    def create(self, request, *args, **kwargs):[m
[32m+[m[32m        """Crear un nuevo usuario"""[m
[32m+[m[32m        return super().create(request, *args, **kwargs)[m
 [m
 class UserListView(APIView):[m
     """Listar todos los usuarios"""[m
[36m@@ -26,7 +61,7 @@[m [mclass UserListView(APIView):[m
 [m
     @swagger_auto_schema([m
         operation_description="Obtiene la lista de usuarios",[m
[31m-        responses={200: UserSerializer(many=True)},[m
[32m+[m[32m        responses={200: UserSerializer(many=True)}[m
     )[m
     def get(self, request, format=None):[m
         users = CustomUser.objects.all()[m
[36m@@ -42,7 +77,6 @@[m [mclass IsAdminOrSelf(permissions.BasePermission):[m
         # Permite si el usuario autenticado es el mismo que el que quiere editar/eliminar[m
         return request.user.id == view.kwargs['pk'][m
 [m
[31m-[m
 class UserEditView(UpdateAPIView):[m
     """Editar un usuario"""[m
     queryset = CustomUser.objects.all()[m
[36m@@ -51,7 +85,7 @@[m [mclass UserEditView(UpdateAPIView):[m
 [m
     @swagger_auto_schema([m
         operation_description="Editar un usuario por ID",[m
[31m-        responses={200: UserSerializer()},[m
[32m+[m[32m        responses={200: UserSerializer()}[m
     )[m
     def patch(self, request, *args, **kwargs):[m
         return super().patch(request, *args, **kwargs)[m
[36m@@ -64,7 +98,7 @@[m [mclass UserDeleteView(DestroyAPIView):[m
 [m
     @swagger_auto_schema([m
         operation_description="Eliminar un usuario por ID",[m
[31m-        responses={204: "Usuario eliminado con éxito"},[m
[32m+[m[32m        responses={204: "Usuario eliminado con éxito"}[m
     )[m
     def delete(self, request, *args, **kwargs):[m
         return super().delete(request, *args, **kwargs)[m
[36m@@ -84,6 +118,7 @@[m [mdef delete_all_users(request):[m
     return Response({"message": "Todos los usuarios han sido eliminados."})[m
 [m
 [m
[32m+[m
 class RegisterView(APIView):[m
     """Registrar un nuevo usuario"""[m
     permission_classes = [permissions.AllowAny][m
[36m@@ -94,13 +129,65 @@[m [mclass RegisterView(APIView):[m
         responses={201: openapi.Response("Usuario creado con éxito")},[m
     )[m
     def post(self, request):[m
[32m+[m[32m        # Validaciones y creación del usuario[m
[32m+[m[32m        required_fields = ['username', 'email', 'password'][m
[32m+[m[32m        for field in required_fields:[m
[32m+[m[32m            if field not in request.data:[m
[32m+[m[32m                return Response([m
[32m+[m[32m                    {'error': f"El campo {field} es obligatorio."},[m
[32m+[m[32m                    status=status.HTTP_400_BAD_REQUEST[m
[32m+[m[32m                )[m
[32m+[m
[32m+[m[32m        # Validar correo electrónico[m
[32m+[m[32m        email = request.data.get('email')[m
[32m+[m[32m        if not email or '@' not in email:[m
[32m+[m[32m            return Response([m
[32m+[m[32m                {'error': "El correo electrónico no tiene un formato válido."},[m
[32m+[m[32m                status=status.HTTP_400_BAD_REQUEST[m
[32m+[m[32m            )[m
[32m+[m
[32m+[m[32m        # Validar contraseña[m
[32m+[m[32m        password = request.data.get('password')[m
[32m+[m[32m        if len(password) < 8:[m
[32m+[m[32m            return Response([m
[32m+[m[32m                {'error': "La contraseña debe tener al menos 8 caracteres."},[m
[32m+[m[32m                status=status.HTTP_400_BAD_REQUEST[m
[32m+[m[32m            )[m
[32m+[m
[32m+[m[32m        # Validar si el nombre de usuario o el correo electrónico ya existen[m
[32m+[m[32m        username = request.data.get('username')[m
[32m+[m[32m        if CustomUser.objects.filter(username=username).exists():[m
[32m+[m[32m            return Response([m
[32m+[m[32m                {'error': "El nombre de usuario ya está en uso."},[m
[32m+[m[32m                status=status.HTTP_400_BAD_REQUEST[m
[32m+[m[32m            )[m
[32m+[m
[32m+[m[32m        if CustomUser.objects.filter(email=email).exists():[m
[32m+[m[32m            return Response([m
[32m+[m[32m                {'error': "El correo electrónico ya está registrado."},[m
[32m+[m[32m                status=status.HTTP_400_BAD_REQUEST[m
[32m+[m[32m            )[m
[32m+[m
[32m+[m[32m        # Obtener el rol de los datos de la solicitud, por defecto será 'jugador'[m
[32m+[m[32m        role = request.data.get('role', 'jugador')  # Asignamos un rol por defecto[m
[32m+[m
[32m+[m[32m        # Validar que el rol sea uno de los permitidos[m
[32m+[m[32m        if role not in ['admin', 'jugador']:[m
[32m+[m[32m            return Response([m
[32m+[m[32m                {'error': "El rol debe ser 'admin' o 'jugador'."},[m
[32m+[m[32m                status=status.HTTP_400_BAD_REQUEST[m
[32m+[m[32m            )[m
[32m+[m
[32m+[m[32m        # Crear el usuario con el serializador[m
         serializer = UserSerializer(data=request.data)[m
[31m-        if serializer.is_valid():[m
[31m-            user = serializer.save()[m
[31m-            user.assign_role('Jugador')  # Por defecto, asignamos el rol 'Jugador'[m
[31m-            return Response({"message": "User created"}, status=status.HTTP_201_CREATED)[m
[31m-        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)[m
[32m+[m[32m        serializer.is_valid(raise_exception=True)  # Lanzará excepción si los datos son inválidos[m
[32m+[m[32m        user = serializer.save()[m
[32m+[m
[32m+[m[32m        # Asignar el rol recibido[m
[32m+[m[32m        user.assign_role(role)  # Asignamos el rol recibido ('admin' o 'jugador')[m
[32m+[m[32m        user.save()[m
 [m
[32m+[m[32m        return Response({"message": "Usuario creado con éxito."}, status=status.HTTP_201_CREATED)[m
 [m
 class LoginView(APIView):[m
     """Iniciar sesión"""[m
[36m@@ -123,6 +210,7 @@[m [mclass LoginView(APIView):[m
                     "application/json": {[m
                         "refresh": "string_refresh_token",[m
                         "access": "string_access_token",[m
[32m+[m[32m                        "role": "admin"  # Aquí agregamos el rol[m
                     }[m
                 },[m
             ),[m
[36m@@ -136,5 +224,6 @@[m [mclass LoginView(APIView):[m
             return Response({[m
                 'refresh': str(refresh),[m
                 'access': str(refresh.access_token),[m
[32m+[m[32m                'role': user.role,  # Devolvemos el rol del usuario[m
             })[m
         return Response({'detail': 'Invalid credentials'}, status=status.HTTP_400_BAD_REQUEST)[m

[33mcommit abf73b7315f173ae4d3e7d23c7c6a645e6f5a307[m
Author: Hector Cano <123791914+HectorCano1411@users.noreply.github.com>
Date:   Mon Nov 25 19:44:18 2024 -0300

    Update README.md

[1mdiff --git a/README.md b/README.md[m
[1mindex 8acc796..f5c4c3a 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -111,7 +111,8 @@[m [mPrimero, es necesario registrar un usuario para poder probar los endpoints.[m
 }[m
 ```[m
 [m
[31m--Despues de generar el toke es posible comenzar a interactuar con los demas endpoint de la API[m
[32m+[m[32m-Despues de generar el toke es posible comenzar a interactuar con los demas endpoint de la API.[m
[32m+[m
 -Es necesario incorporar el token que entrega como access en Autorization y seleccionar Bearer Token e ingresar en la casilla correspondiente.[m
 [m
 -Ejemplo de respuesta del token:[m

[33mcommit 93fcd8aae62c7ade5fc5a00f9e8c75fc3bf35025[m
Author: Hector Cano <123791914+HectorCano1411@users.noreply.github.com>
Date:   Mon Nov 25 19:43:17 2024 -0300

    Update README.md

[1mdiff --git a/README.md b/README.md[m
[1mindex 5824503..8acc796 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -79,6 +79,7 @@[m [mPrimero, es necesario registrar un usuario para poder probar los endpoints.[m
 - **URL:** `http://localhost:8000/api/users/register/`[m
 [m
 **Cuerpo de la solicitud (JSON):**[m
[32m+[m[32m```[m
 {[m
   "username": "prueba",[m
   "email": "user@example.com",[m
[36m@@ -86,7 +87,7 @@[m [mPrimero, es necesario registrar un usuario para poder probar los endpoints.[m
   "is_staff": true,[m
   "is_superuser": true[m
 }[m
[31m-[m
[32m+[m[32m```[m
 [m
 ## 2. Generar un Token de Acceso[m
 [m
[36m@@ -112,12 +113,13 @@[m [mPrimero, es necesario registrar un usuario para poder probar los endpoints.[m
 [m
 -Despues de generar el toke es posible comenzar a interactuar con los demas endpoint de la API[m
 -Es necesario incorporar el token que entrega como access en Autorization y seleccionar Bearer Token e ingresar en la casilla correspondiente.[m
[31m-ejemplo de respuesta del token:[m
 [m
[32m+[m[32m-Ejemplo de respuesta del token:[m
[32m+[m
[32m+[m[32m```[m
 {[m
     "refresh": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjY1NzE3NCwiaWF0IjoxNzMyNTcwNzc0LCJqdGkiOiIwYzQ4NjkwZTAzOGQ0Mjk2YjdkMTcyOWE1OGQ0N2Q2YiIsInVzZXJfaWQiOjF9.8zdvfyM3EFhd3q8ToyQnEmzwuBawS7O78lhvb5FhqO4",[m
     "access": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzMyNTcyNTc0LCJpYXQiOjE3MzI1NzA3NzQsImp0aSI6ImY5MzkzZTYzMTU1NTRmMmNhODBmNzY2ODYyMWYxZjIzIiwidXNlcl9pZCI6MX0.K0z35E-N53zIKwyEnm7WQGMc5NvAnwIjTlnK6Tbrtrw"[m
 }[m
[31m-[m
[31m-[m
[31m-¨-Se dejan como recursos dos archivos con preguntas y trivias para poder inserta mediante Postgresql[m
[32m+[m[32m```[m
[32m+[m[32m-Se dejan como recursos dos archivos con preguntas y trivias para poder inserta mediante Postgresql[m

[33mcommit 9436c87ff2cf9ce647327b400b65f16bce1caa5e[m
Author: Hector Cano <123791914+HectorCano1411@users.noreply.github.com>
Date:   Mon Nov 25 19:41:31 2024 -0300

    Update README.md

[1mdiff --git a/README.md b/README.md[m
[1mindex 26d6ef3..5824503 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -102,13 +102,13 @@[m [mPrimero, es necesario registrar un usuario para poder probar los endpoints.[m
 -Content type[m
 -application/json[m
 [m
[31m-body/raw/json[m
 **Cuerpo de la solicitud (JSON):**[m
[31m-[m
[32m+[m[32m```[m
 {[m
   "username": "prueba",[m
   "password": "prueba987"[m
 }[m
[32m+[m[32m```[m
 [m
 -Despues de generar el toke es posible comenzar a interactuar con los demas endpoint de la API[m
 -Es necesario incorporar el token que entrega como access en Autorization y seleccionar Bearer Token e ingresar en la casilla correspondiente.[m

[33mcommit c7b95a900a0b76f700e6afb96ea963c979de2d49[m
Author: Hector Cano <123791914+HectorCano1411@users.noreply.github.com>
Date:   Mon Nov 25 19:40:11 2024 -0300

    Update README.md

[1mdiff --git a/README.md b/README.md[m
[1mindex 446b990..26d6ef3 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -79,7 +79,6 @@[m [mPrimero, es necesario registrar un usuario para poder probar los endpoints.[m
 - **URL:** `http://localhost:8000/api/users/register/`[m
 [m
 **Cuerpo de la solicitud (JSON):**[m
[31m-```json[m
 {[m
   "username": "prueba",[m
   "email": "user@example.com",[m

[33mcommit c8060a7c88ef5e9085e4487bb936f7fc435d4e63[m
Author: Hector Cano <123791914+HectorCano1411@users.noreply.github.com>
Date:   Mon Nov 25 19:39:22 2024 -0300

    Update README.md

[1mdiff --git a/README.md b/README.md[m
[1mindex 1171037..446b990 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -86,7 +86,7 @@[m [mPrimero, es necesario registrar un usuario para poder probar los endpoints.[m
   "password": "prueba987",[m
   "is_staff": true,[m
   "is_superuser": true[m
[31m-}```[m
[32m+[m[32m}[m
 [m
 [m
 ## 2. Generar un Token de Acceso[m
[36m@@ -105,7 +105,7 @@[m [mPrimero, es necesario registrar un usuario para poder probar los endpoints.[m
 [m
 body/raw/json[m
 **Cuerpo de la solicitud (JSON):**[m
[31m-```json[m
[32m+[m
 {[m
   "username": "prueba",[m
   "password": "prueba987"[m

[33mcommit e54b023e6e673e19f429cec43d8b861b993e8eb6[m
Author: Hector Cano <123791914+HectorCano1411@users.noreply.github.com>
Date:   Mon Nov 25 19:33:48 2024 -0300

    Update README.md

[1mdiff --git a/README.md b/README.md[m
[1mindex 495c8ca..1171037 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -86,7 +86,7 @@[m [mPrimero, es necesario registrar un usuario para poder probar los endpoints.[m
   "password": "prueba987",[m
   "is_staff": true,[m
   "is_superuser": true[m
[31m-}[m
[32m+[m[32m}```[m
 [m
 [m
 ## 2. Generar un Token de Acceso[m

[33mcommit 9c9f944749d2b26047c1686f43376a0a28a6bc2f[m
Author: Hector Cano <123791914+HectorCano1411@users.noreply.github.com>
Date:   Mon Nov 25 19:33:04 2024 -0300

    Update README.md

[1mdiff --git a/README.md b/README.md[m
[1mindex e802f8f..495c8ca 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -60,3 +60,65 @@[m [mEjecuta el siguiente comando para iniciar los contenedores:[m
 [m
 - **pgAdmin:** [http://localhost:5050](http://localhost:5050)[m
 [m
[32m+[m
[32m+[m
[32m+[m[32m# Instrucciones para Trabajar con la API[m
[32m+[m
[32m+[m[32mPara interactuar con esta API, se recomienda utilizar **Postman**, aprovechando las librerías Swagger o Redoc para probar los endpoints y explorar las funcionalidades disponibles.[m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m## Pasos Iniciales[m
[32m+[m
[32m+[m[32m### 1. Crear un Usuario[m
[32m+[m
[32m+[m[32mPrimero, es necesario registrar un usuario para poder probar los endpoints.[m
[32m+[m
[32m+[m[32m**Endpoint:**[m[41m  [m
[32m+[m[32m- **Método:** `POST`[m[41m  [m
[32m+[m[32m- **URL:** `http://localhost:8000/api/users/register/`[m
[32m+[m
[32m+[m[32m**Cuerpo de la solicitud (JSON):**[m
[32m+[m[32m```json[m
[32m+[m[32m{[m
[32m+[m[32m  "username": "prueba",[m
[32m+[m[32m  "email": "user@example.com",[m
[32m+[m[32m  "password": "prueba987",[m
[32m+[m[32m  "is_staff": true,[m
[32m+[m[32m  "is_superuser": true[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m[32m## 2. Generar un Token de Acceso[m
[32m+[m
[32m+[m[32m### Endpoint para Generar Token:[m
[32m+[m
[32m+[m[32m- **Método:** `POST`[m
[32m+[m[32m- **URL:** `http://localhost:8000/api/token/`[m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m### Encabezado (Header):[m
[32m+[m
[32m+[m[32m-Content type[m
[32m+[m[32m-application/json[m
[32m+[m
[32m+[m[32mbody/raw/json[m
[32m+[m[32m**Cuerpo de la solicitud (JSON):**[m
[32m+[m[32m```json[m
[32m+[m[32m{[m
[32m+[m[32m  "username": "prueba",[m
[32m+[m[32m  "password": "prueba987"[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m-Despues de generar el toke es posible comenzar a interactuar con los demas endpoint de la API[m
[32m+[m[32m-Es necesario incorporar el token que entrega como access en Autorization y seleccionar Bearer Token e ingresar en la casilla correspondiente.[m
[32m+[m[32mejemplo de respuesta del token:[m
[32m+[m
[32m+[m[32m{[m
[32m+[m[32m    "refresh": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczMjY1NzE3NCwiaWF0IjoxNzMyNTcwNzc0LCJqdGkiOiIwYzQ4NjkwZTAzOGQ0Mjk2YjdkMTcyOWE1OGQ0N2Q2YiIsInVzZXJfaWQiOjF9.8zdvfyM3EFhd3q8ToyQnEmzwuBawS7O78lhvb5FhqO4",[m
[32m+[m[32m    "access": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzMyNTcyNTc0LCJpYXQiOjE3MzI1NzA3NzQsImp0aSI6ImY5MzkzZTYzMTU1NTRmMmNhODBmNzY2ODYyMWYxZjIzIiwidXNlcl9pZCI6MX0.K0z35E-N53zIKwyEnm7WQGMc5NvAnwIjTlnK6Tbrtrw"[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m[32m¨-Se dejan como recursos dos archivos con preguntas y trivias para poder inserta mediante Postgresql[m

[33mcommit 2b1032f6519f091b861915991c9a1e60be4dd764[m
Author: Hector Cano <123791914+HectorCano1411@users.noreply.github.com>
Date:   Mon Nov 25 18:56:41 2024 -0300

    Update README.md

[1mdiff --git a/README.md b/README.md[m
[1mindex a4de1d4..e802f8f 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -52,7 +52,11 @@[m [mEjecuta el siguiente comando para iniciar los contenedores:[m
 [m
 ### Accede a las siguientes URLs:[m
 [m
[31m-**API Backend:** http://localhost:8000[m
[31m-**Documentación Swagger:** http://localhost:8000/swagger/[m
[31m-**Documentación Redoc:** http://localhost:8000/redoc/[m
[31m-**pgAdmin:** http://localhost:5050[m
[32m+[m[32m- **API Backend:** [http://localhost:8000](http://localhost:8000)[m
[32m+[m
[32m+[m[32m- **Documentación Swagger:** [http://localhost:8000/swagger/](http://localhost:8000/swagger/)[m
[32m+[m
[32m+[m[32m- **Documentación Redoc:** [http://localhost:8000/redoc/](http://localhost:8000/redoc/)[m
[32m+[m
[32m+[m[32m- **pgAdmin:** [http://localhost:5050](http://localhost:5050)[m
[41m+[m

[33mcommit 2f83660752467316f3963cd5f78b22120a6d9472[m
Author: Hector Cano <123791914+HectorCano1411@users.noreply.github.com>
Date:   Mon Nov 25 18:55:26 2024 -0300

    Create README.md

[1mdiff --git a/README.md b/README.md[m
[1mnew file mode 100644[m
[1mindex 0000000..a4de1d4[m
[1m--- /dev/null[m
[1m+++ b/README.md[m
[36m@@ -0,0 +1,58 @@[m
[32m+[m[32m# TalaTrivia: API para un Juego de Preguntas y Respuestas[m
[32m+[m
[32m+[m[32m## Descripción[m
[32m+[m[32mTalaTrivia es un juego de preguntas y respuestas enfocado en temas de recursos humanos, donde los usuarios compiten respondiendo preguntas de trivias para obtener el mayor puntaje posible. La API proporciona las funcionalidades necesarias para gestionar usuarios, preguntas, trivias y rankings.[m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m## Funcionalidades Principales[m
[32m+[m
[32m+[m[32m### Gestión de Usuarios[m
[32m+[m[32m- Crear y listar usuarios con atributos como ID, nombre y correo electrónico.[m
[32m+[m
[32m+[m[32m### Gestión de Preguntas[m
[32m+[m[32m- Crear y listar preguntas con múltiples opciones de respuesta (solo una correcta).[m
[32m+[m[32m- Clasificación de preguntas por niveles de dificultad: fácil, medio y difícil, con puntajes diferenciados.[m
[32m+[m
[32m+[m[32m### Gestión de Trivias[m
[32m+[m[32m- Crear trivias con nombre, descripción, selección de preguntas y asignación de usuarios participantes.[m
[32m+[m
[32m+[m[32m### Participación en Trivias[m
[32m+[m[32m- Permitir a los usuarios responder preguntas de las trivias asignadas.[m
[32m+[m[32m- Validar respuestas y calcular puntajes finales en base a respuestas correctas.[m
[32m+[m
[32m+[m[32m### Ranking de Usuarios[m
[32m+[m[32m- Generar rankings basados en los puntajes obtenidos en trivias específicas.[m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m## Configuración del Proyecto[m
[32m+[m
[32m+[m[32m### Tecnologías Utilizadas[m
[32m+[m[32m- **Backend**: Python (Django, Django REST Framework)[m
[32m+[m[32m- **Base de Datos**: PostgreSQL[m
[32m+[m[32m- **Contenedores**: Docker y Docker Compose[m
[32m+[m[32m- **Documentación API**: Swagger y Redoc[m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m## Implementación con Docker[m
[32m+[m
[32m+[m[32m### Requisitos Previos[m
[32m+[m[32m1. Tener Docker y Docker Compose instalados.[m
[32m+[m[32m2. Clonar el repositorio del proyecto:[m
[32m+[m[32m3. Cargar scripts de base de datos[m
[32m+[m[32m4. Utilizar documentación Swagger o Redoc para comenzar a probar los endponits[m
[32m+[m
[32m+[m[32m## Iniciar el Proyecto[m
[32m+[m
[32m+[m[32mEjecuta el siguiente comando para iniciar los contenedores:[m
[32m+[m
[32m+[m[32m-docker-compose up --build[m
[32m+[m
[32m+[m[32m### Accede a las siguientes URLs:[m
[32m+[m
[32m+[m[32m**API Backend:** http://localhost:8000[m
[32m+[m[32m**Documentación Swagger:** http://localhost:8000/swagger/[m
[32m+[m[32m**Documentación Redoc:** http://localhost:8000/redoc/[m
[32m+[m[32m**pgAdmin:** http://localhost:5050[m

[33mcommit 7b5e23b6dcb4be5316fe372606d82fb19af1ddf9[m
Merge: dfd0469 8ec5625
Author: Hector Cano <123791914+HectorCano1411@users.noreply.github.com>
Date:   Mon Nov 25 02:54:27 2024 -0300

    Merge pull request #5 from HectorCano1411/devHC2
    
    feat: Implemented updates in 'ranking', 'users', and 'tala_trivia' apps.

[33mcommit 8ec56254718381d29d2ff442e43dc0c950e809f3[m
Author: Hector Cano <hectorcanolealestudios@gmail.com>
Date:   Mon Nov 25 02:52:42 2024 -0300

    feat: Implemented updates in 'ranking', 'users', and 'tala_trivia' apps.
    - Modified 'ranking' app: updated 'models.py', 'views.py', 'admin.py', and 'urls.py' for improved functionality.
    - Updated 'tala_trivia/settings.py' and 'urls.py' for better configuration and routing.
    - Refactored 'users' app: modified 'models.py' and 'views.py' to enhance user management.
    - Added migration '0003_remove_customuser_role.py' to adjust user model and role handling.
    - Cleaned up '.pyc' files and updated '.gitignore' accordingly.

[1mdiff --git a/ranking/__pycache__/admin.cpython-313.pyc b/ranking/__pycache__/admin.cpython-313.pyc[m
[1mindex 1bc8ca0..0a730da 100644[m
Binary files a/ranking/__pycache__/admin.cpython-313.pyc and b/ranking/__pycache__/admin.cpython-313.pyc differ
[1mdiff --git a/ranking/__pycache__/models.cpython-313.pyc b/ranking/__pycache__/models.cpython-313.pyc[m
[1mindex 965ec38..140f5f2 100644[m
Binary files a/ranking/__pycache__/models.cpython-313.pyc and b/ranking/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/ranking/__pycache__/urls.cpython-313.pyc b/ranking/__pycache__/urls.cpython-313.pyc[m
[1mindex 227a248..363a2ed 100644[m
Binary files a/ranking/__pycache__/urls.cpython-313.pyc and b/ranking/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/ranking/__pycache__/views.cpython-313.pyc b/ranking/__pycache__/views.cpython-313.pyc[m
[1mindex 87ebf37..69f8eb8 100644[m
Binary files a/ranking/__pycache__/views.cpython-313.pyc and b/ranking/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/ranking/admin.py b/ranking/admin.py[m
[1mindex 9e1fd37..40526b8 100644[m
[1m--- a/ranking/admin.py[m
[1m+++ b/ranking/admin.py[m
[36m@@ -2,14 +2,28 @@[m [mfrom django.contrib import admin[m
 from .models import Ranking[m
 from trivias.models import Trivia[m
 from users.models import CustomUser[m
[32m+[m[32mfrom django import forms[m
[32m+[m
[32m+[m[32m# Formulario personalizado para el modelo Ranking[m
[32m+[m[32mclass RankingForm(forms.ModelForm):[m
[32m+[m[32m    class Meta:[m
[32m+[m[32m        model = Ranking[m
[32m+[m[32m        fields = ['trivia', 'user', 'score']  # Especificamos los campos que queremos que se muestren[m
[32m+[m
[32m+[m[32m    # Aseguramos que el campo 'score' sea siempre un número positivo[m
[32m+[m[32m    def clean_score(self):[m
[32m+[m[32m        score = self.cleaned_data.get('score')[m
[32m+[m[32m        if score < 0:[m
[32m+[m[32m            raise forms.ValidationError("El puntaje no puede ser negativo")[m
[32m+[m[32m        return score[m
 [m
 # Personalización del modelo Ranking[m
 class RankingAdmin(admin.ModelAdmin):[m
[31m-    list_display = ('trivia', 'user', 'score')[m
[32m+[m[32m    list_display = ('get_trivia_name', 'get_user_name', 'score')  # Mostramos los nombres en lugar de las relaciones[m
     search_fields = ('user__username', 'trivia__name', 'score')[m
     list_filter = ('trivia', 'score')[m
[31m-    ordering = ['-score']  # Asegura que se ordenen por puntaje más alto primero[m
[31m-    readonly_fields = ('trivia', 'user', 'score')[m
[32m+[m[32m    ordering = ['-score']  # Ordenamos por puntaje más alto primero[m
[32m+[m[32m    form = RankingForm  # Usamos el formulario personalizado[m
 [m
     # Métodos para mostrar información más amigable en la administración[m
     def get_user_name(self, obj):[m
[1mdiff --git a/ranking/models.py b/ranking/models.py[m
[1mindex 5799597..551ad08 100644[m
[1m--- a/ranking/models.py[m
[1m+++ b/ranking/models.py[m
[36m@@ -12,3 +12,5 @@[m [mclass Ranking(models.Model):[m
 [m
     class Meta:[m
         ordering = ['-score']  # Highest score first[m
[32m+[m[32mdef __str__(self):[m
[32m+[m[32m    return f"{self.user.username} - {self.trivia.name} - Score: {self.score}"[m
\ No newline at end of file[m
[1mdiff --git a/ranking/urls.py b/ranking/urls.py[m
[1mindex c885963..743a7ba 100644[m
[1m--- a/ranking/urls.py[m
[1m+++ b/ranking/urls.py[m
[36m@@ -1,11 +1,10 @@[m
[31m-# # ranking/urls.py[m
[31m-# from django.urls import path[m
[31m-# from .views import RankingListView, RankingDetailView, RankingCreateView, RankingEditView, RankingDeleteView[m
[32m+[m[32mfrom django.urls import path, include[m
[32m+[m[32mfrom rest_framework.routers import DefaultRouter[m
[32m+[m[32mfrom ranking.views import RankingViewSet[m
 [m
[31m-# urlpatterns = [[m
[31m-#     path('ranking/', RankingListView.as_view(), name='ranking-list'),  # Listar todos los rankings[m
[31m-#     path('ranking/<int:pk>/', RankingDetailView.as_view(), name='ranking-detail'),  # Detalle de un ranking[m
[31m-#     path('ranking/create/', RankingCreateView.as_view(), name='ranking-create'),  # Crear un nuevo ranking[m
[31m-#     path('ranking/<int:pk>/edit/', RankingEditView.as_view(), name='ranking-edit'),  # Editar un ranking[m
[31m-#     path('ranking/<int:pk>/delete/', RankingDeleteView.as_view(), name='ranking-delete'),  # Eliminar un ranking[m
[31m-# ][m
[32m+[m[32mrouter = DefaultRouter()[m
[32m+[m[32mrouter.register(r'rankings', RankingViewSet, basename='ranking')  # Registro del ViewSet[m
[32m+[m
[32m+[m[32murlpatterns = [[m
[32m+[m[32m    path('api/', include(router.urls)),  # Incluye las rutas generadas por el enrutador[m
[32m+[m[32m][m
[1mdiff --git a/ranking/views.py b/ranking/views.py[m
[1mindex 64702e5..75ea077 100644[m
[1m--- a/ranking/views.py[m
[1m+++ b/ranking/views.py[m
[36m@@ -1,9 +1,9 @@[m
[31m-[m
 from rest_framework import viewsets[m
[31m-from .serializers import RankingSerializer[m
 from rest_framework.decorators import action[m
 from rest_framework.response import Response[m
[31m-from .models import Ranking[m
[32m+[m[32mfrom django.shortcuts import get_object_or_404[m
[32m+[m[32mfrom .serializers import RankingSerializer[m
[32m+[m[32mfrom .models import Ranking, Trivia  # Importa el modelo Trivia si es necesario[m
 [m
 class RankingViewSet(viewsets.ModelViewSet):[m
     queryset = Ranking.objects.all()[m
[36m@@ -11,46 +11,58 @@[m [mclass RankingViewSet(viewsets.ModelViewSet):[m
 [m
     @action(detail=True, methods=['get'])[m
     def get_ranking(self, request, pk=None):[m
[31m-        trivia = self.get_object()[m
[32m+[m[32m        # Obtener la trivia relacionada utilizando el modelo Trivia[m
[32m+[m[32m        trivia = get_object_or_404(Trivia, pk=pk)  # `pk` se refiere al ID de la trivia en la URL[m
         rankings = Ranking.objects.filter(trivia=trivia).order_by('-score')[m
[32m+[m[41m        [m
[32m+[m[32m        # Serializar los rankings filtrados[m
[32m+[m[32m        serializer = RankingSerializer(rankings, many=True)[m
[32m+[m[41m        [m
[32m+[m[32m        # Responder con los datos serializados[m
[32m+[m[32m        return Response(serializer.data)[m
[32m+[m[41m    [m
[32m+[m[32m    # Nuevo endpoint para obtener el ranking de todas las trivias[m
[32m+[m[32m    @action(detail=False, methods=['get'])[m
[32m+[m[32m    def get_all_rankings(self, request):[m
[32m+[m[32m        # Obtener todos los rankings, sin filtrar por trivia[m
[32m+[m[32m        rankings = Ranking.objects.all().order_by('-score')[m
[32m+[m[41m        [m
[32m+[m[32m        # Serializar todos los rankings[m
         serializer = RankingSerializer(rankings, many=True)[m
[32m+[m[41m        [m
[32m+[m[32m        # Responder con los rankings de todas las trivias[m
         return Response(serializer.data)[m
 [m
[31m-from rest_framework.decorators import action[m
[31m-from rest_framework.response import Response[m
[31m-from rest_framework import status, viewsets[m
[31m-from .models import Participation[m
[31m-from .serializers import ParticipationSerializer[m
 [m
[31m-class ParticipationViewSet(viewsets.ModelViewSet):[m
[31m-    queryset = Participation.objects.all()[m
[31m-    serializer_class = ParticipationSerializer[m
[32m+[m[32m# from rest_framework import viewsets[m
[32m+[m[32m# from .serializers import RankingSerializer[m
[32m+[m[32m# from rest_framework.decorators import action[m
[32m+[m[32m# from rest_framework.response import Response[m
[32m+[m[32m# from .models import Ranking[m
 [m
[31m-    # Otras vistas existentes...[m
[32m+[m[32m# class RankingViewSet(viewsets.ModelViewSet):[m
[32m+[m[32m#     queryset = Ranking.objects.all()[m
[32m+[m[32m#     serializer_class = RankingSerializer[m
 [m
[31m-    @action(detail=True, methods=['get'])[m
[31m-    def ranking(self, request, pk=None):[m
[31m-        """[m
[31m-        Obtiene el ranking de usuarios de una trivia específica, ordenado por puntaje.[m
[31m-        """[m
[31m-        # Asegurarnos de que se está pasando un ID de trivia válido[m
[31m-        try:[m
[31m-            trivia_id = pk[m
[31m-            participations = Participation.objects.filter(trivia__id=trivia_id).order_by('-score')[m
[31m-            [m
[31m-            # Serializamos las participaciones[m
[31m-            serializer = ParticipationSerializer(participations, many=True)[m
[31m-            [m
[31m-            # Creamos un ranking basado en los puntajes[m
[31m-            ranking = [[m
[31m-                {[m
[31m-                    "user": participation.user.username,[m
[31m-                    "score": participation.score[m
[31m-                }[m
[31m-                for participation in participations[m
[31m-            ][m
[31m-            [m
[31m-            return Response(ranking, status=status.HTTP_200_OK)[m
[32m+[m[32m#     @action(detail=True, methods=['get'])[m
[32m+[m[32m#     def get_ranking(self, request, pk=None):[m
[32m+[m[32m#         trivia = self.get_object()  # Obtiene la trivia con pk[m
[32m+[m[41m        [m
[32m+[m[32m#         # Filtros opcionales[m
[32m+[m[32m#         score_min = request.query_params.get('score_min')  # Filtro de puntaje mínimo[m
[32m+[m[32m#         user_id = request.query_params.get('user_id')  # Filtro por usuario[m
[32m+[m[41m        [m
[32m+[m[32m#         # Filtrar por puntaje mínimo[m
[32m+[m[32m#         rankings = Ranking.objects.filter(trivia=trivia)[m
[32m+[m[32m#         if score_min:[m
[32m+[m[32m#             rankings = rankings.filter(score__gte=score_min)  # Filtra por puntaje mínimo[m
[32m+[m
[32m+[m[32m#         # Filtrar por un usuario específico[m
[32m+[m[32m#         if user_id:[m
[32m+[m[32m#             rankings = rankings.filter(user_id=user_id)  # Filtra por ID de usuario[m
[32m+[m
[32m+[m[32m#         # Ordenar por puntaje descendente (ya está por defecto, pero se puede cambiar)[m
[32m+[m[32m#         rankings = rankings.order_by('-score')[m
         [m
[31m-        except Participation.DoesNotExist:[m
[31m-            return Response({"detail": "No hay participaciones para esta trivia."}, status=status.HTTP_404_NOT_FOUND)[m
[32m+[m[32m#         serializer = RankingSerializer(rankings, many=True)[m
[32m+[m[32m#         return Response(serializer.data)[m
[1mdiff --git a/tala_trivia/__pycache__/settings.cpython-313.pyc b/tala_trivia/__pycache__/settings.cpython-313.pyc[m
[1mindex 2b6fb3b..8669550 100644[m
Binary files a/tala_trivia/__pycache__/settings.cpython-313.pyc and b/tala_trivia/__pycache__/settings.cpython-313.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/urls.cpython-313.pyc b/tala_trivia/__pycache__/urls.cpython-313.pyc[m
[1mindex f06c899..d25cc95 100644[m
Binary files a/tala_trivia/__pycache__/urls.cpython-313.pyc and b/tala_trivia/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/tala_trivia/settings.py b/tala_trivia/settings.py[m
[1mindex 60dbc2f..1b86ce2 100644[m
[1m--- a/tala_trivia/settings.py[m
[1m+++ b/tala_trivia/settings.py[m
[36m@@ -57,7 +57,6 @@[m [mCSRF_TRUSTED_ORIGINS = [[m
 [m
 REST_FRAMEWORK = {[m
     'DEFAULT_AUTHENTICATION_CLASSES': [[m
[31m-        # 'rest_framework.authentication.BasicAuthentication',[m
         'rest_framework_simplejwt.authentication.JWTAuthentication',  # Use JWT Authentication[m
     ],[m
     'DEFAULT_PERMISSION_CLASSES': [[m
[1mdiff --git a/tala_trivia/urls.py b/tala_trivia/urls.py[m
[1mindex 3b1eab4..c5d5ccb 100644[m
[1m--- a/tala_trivia/urls.py[m
[1m+++ b/tala_trivia/urls.py[m
[36m@@ -1,37 +1,55 @@[m
[31m-# tala_trivia/urls.py[m
 from django.contrib import admin[m
 from django.urls import path, include[m
 from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView[m
 from rest_framework import permissions[m
[31m-from drf_yasg.views import get_schema_view # type: ignore[m
[31m-from drf_yasg import openapi # type: ignore[m
[32m+[m[32mfrom drf_yasg.views import get_schema_view  # type: ignore[m
[32m+[m[32mfrom drf_yasg import openapi  # type: ignore[m
 [m
[31m-# Definir la vista del esquema Swagger[m
[32m+[m[32m# Configurar la vista del esquema Swagger[m
 schema_view = get_schema_view([m
[31m-   openapi.Info([m
[31m-      title="Tala Trivia API",[m
[31m-      default_version='v1',[m
[31m-      description="Documentación de la API de Tala Trivia",[m
[31m-      terms_of_service="https://www.google.com/policies/terms/",[m
[31m-      contact=openapi.Contact(email="contact@tala_trivia.local"),[m
[31m-      license=openapi.License(name="MIT License"),[m
[31m-   ),[m
[31m-   public=True,[m
[31m-   permission_classes=(permissions.AllowAny,),[m
[32m+[m[32m    openapi.Info([m
[32m+[m[32m        title="Tala Trivia API",[m
[32m+[m[32m        default_version="v1",[m
[32m+[m[32m        description="Documentación de la API de Tala Trivia",[m
[32m+[m[32m        terms_of_service="https://www.google.com/policies/terms/",[m
[32m+[m[32m        contact=openapi.Contact(email="contact@tala_trivia.local"),[m
[32m+[m[32m        license=openapi.License(name="MIT License"),[m
[32m+[m[32m    ),[m
[32m+[m[32m    public=True,[m
[32m+[m[32m    permission_classes=(permissions.AllowAny,),[m
 )[m
 [m
 urlpatterns = [[m
[31m-    path('admin/', admin.site.urls),[m
[31m-    path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),[m
[31m-    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),[m
[31m-    path('api/users/', include('users.urls')),  # Incluir las rutas de usuarios[m
[31m-    path('questions/', include('questions.urls')),  # Incluir las rutas de preguntas[m
[31m-    path('api/', include('trivias.urls')),  # Incluir las URLs de la aplicación 'trivias'[m
[32m+[m[32m    # Admin[m
[32m+[m[32m    path("admin/", admin.site.urls),[m
 [m
[31m-    [m
[31m-    # Agregar la ruta de Swagger para la documentación interactiva[m
[31m-    path('swagger/', schema_view.with_ui('swagger', cache_timeout=0), name='schema-swagger-ui'),[m
[31m-    [m
[31m-    # Si prefieres la documentación en formato ReDoc, también puedes agregarla:[m
[31m-    path('redoc/', schema_view.with_ui('redoc', cache_timeout=0), name='schema-redoc'),[m
[32m+[m[32m    # Auth (Login & Tokens)[m
[32m+[m[32m    path([m
[32m+[m[32m        "api/token/",[m
[32m+[m[32m        TokenObtainPairView.as_view(),[m
[32m+[m[32m        name="token_obtain_pair",[m
[32m+[m[32m    ),[m
[32m+[m[32m    path([m
[32m+[m[32m        "api/token/refresh/",[m
[32m+[m[32m        TokenRefreshView.as_view(),[m
[32m+[m[32m        name="token_refresh",[m
[32m+[m[32m    ),[m
[32m+[m
[32m+[m[32m    # App-specific routes[m
[32m+[m[32m    path("api/users/", include("users.urls")),  # Users module[m
[32m+[m[32m    path("api/questions/", include("questions.urls")),  # Questions module[m
[32m+[m[32m    path("api/rankings/", include("ranking.urls")),  # Rankings module[m
[32m+[m[32m    path("api/trivias/", include("trivias.urls")),  # Trivias module[m
[32m+[m
[32m+[m[32m    # Documentation[m
[32m+[m[32m    path([m
[32m+[m[32m        "swagger/",[m
[32m+[m[32m        schema_view.with_ui("swagger", cache_timeout=0),[m
[32m+[m[32m        name="schema-swagger-ui",[m
[32m+[m[32m    ),[m
[32m+[m[32m    path([m
[32m+[m[32m        "redoc/",[m
[32m+[m[32m        schema_view.with_ui("redoc", cache_timeout=0),[m
[32m+[m[32m        name="schema-redoc",[m
[32m+[m[32m    ),[m
 ][m
[1mdiff --git a/users/__pycache__/models.cpython-313.pyc b/users/__pycache__/models.cpython-313.pyc[m
[1mindex e28d5a8..ed7d96a 100644[m
Binary files a/users/__pycache__/models.cpython-313.pyc and b/users/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/users/__pycache__/views.cpython-313.pyc b/users/__pycache__/views.cpython-313.pyc[m
[1mindex d1b7f39..7beac3d 100644[m
Binary files a/users/__pycache__/views.cpython-313.pyc and b/users/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/users/migrations/0003_remove_customuser_role.py b/users/migrations/0003_remove_customuser_role.py[m
[1mnew file mode 100644[m
[1mindex 0000000..144e448[m
[1m--- /dev/null[m
[1m+++ b/users/migrations/0003_remove_customuser_role.py[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32m# Generated by Django 5.1.3 on 2024-11-25 05:35[m
[32m+[m
[32m+[m[32mfrom django.db import migrations[m
[32m+[m
[32m+[m
[32m+[m[32mclass Migration(migrations.Migration):[m
[32m+[m
[32m+[m[32m    dependencies = [[m
[32m+[m[32m        ('users', '0002_customuser_role'),[m
[32m+[m[32m    ][m
[32m+[m
[32m+[m[32m    operations = [[m
[32m+[m[32m        migrations.RemoveField([m
[32m+[m[32m            model_name='customuser',[m
[32m+[m[32m            name='role',[m
[32m+[m[32m        ),[m
[32m+[m[32m    ][m
[1mdiff --git a/users/migrations/__pycache__/0003_remove_customuser_role.cpython-313.pyc b/users/migrations/__pycache__/0003_remove_customuser_role.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..1256359[m
Binary files /dev/null and b/users/migrations/__pycache__/0003_remove_customuser_role.cpython-313.pyc differ
[1mdiff --git a/users/models.py b/users/models.py[m
[1mindex 9467e33..db1f3c1 100644[m
[1m--- a/users/models.py[m
[1m+++ b/users/models.py[m
[36m@@ -21,11 +21,7 @@[m [mclass CustomUser(AbstractUser):[m
         group, created = Group.objects.get_or_create(name=role_name)[m
         self.groups.add(group)[m
         self.save()[m
[31m-    ROLE_CHOICES = ([m
[31m-        ('admin', 'Admin'),[m
[31m-        ('jugador', 'Jugador'),[m
[31m-    )[m
[31m-    role = models.CharField(max_length=10, choices=ROLE_CHOICES, default='jugador')[m
[32m+[m[41m [m
     [m
     def assign_role(self, role_name):[m
         """Asigna un rol (grupo) al usuario."""[m
[36m@@ -38,8 +34,8 @@[m [mclass CustomUser(AbstractUser):[m
 [m
     def is_admin(self):[m
         """Verifica si el usuario tiene el rol de admin."""[m
[31m-        return self.role == 'admin'[m
[32m+[m[32m        return self.groups.filter(name='admin').exists()[m
 [m
     def is_jugador(self):[m
         """Verifica si el usuario tiene el rol de jugador."""[m
[31m-        return self.role == 'jugador'[m
\ No newline at end of file[m
[32m+[m[32m        return self.groups.filter(name='jugador').exists()[m
[1mdiff --git a/users/views.py b/users/views.py[m
[1mindex dce636a..8048659 100644[m
[1m--- a/users/views.py[m
[1m+++ b/users/views.py[m
[36m@@ -8,7 +8,7 @@[m [mfrom rest_framework.generics import UpdateAPIView, DestroyAPIView[m
 from rest_framework.exceptions import PermissionDenied[m
 from rest_framework.decorators import api_view[m
 from drf_yasg.utils import swagger_auto_schema # type: ignore[m
[31m-from drf_yasg import openapi # type: ignore[m
[32m+[m[32mfrom drf_yasg import openapi  # type: ignore[m
 from .models import CustomUser[m
 from .serializers import UserSerializer[m
 [m

[33mcommit dfd04699cb98edd805a8b02cd6e918a67f3e8a74[m
Merge: 4cd9f00 b79673a
Author: Hector Cano <123791914+HectorCano1411@users.noreply.github.com>
Date:   Mon Nov 25 00:08:04 2024 -0300

    Merge pull request #4 from HectorCano1411/devHC2
    
    feat: Updated views, models, serializers, permissions, and URLs for t…

[33mcommit b79673a579c0ffd225535222c50f14468e649ea4[m
Author: Hector Cano <hectorcanolealestudios@gmail.com>
Date:   Mon Nov 25 00:05:36 2024 -0300

    feat: Updated views, models, serializers, permissions, and URLs for the 'trivias' and 'ranking' apps.
    
    - Updated anking/views.py to implement new ranking logic.
    - Modified      rivias app files: models, serializers, views, permissions, and URLs.
    - Added new migration for changes in participation options and related models.
    - Cleaned up generated .pyc files, added to .gitignore.
    - Adjusted URL configurations in        ala_trivia/urls.py and  rivias/urls.py.

[1mdiff --git a/ranking/views.py b/ranking/views.py[m
[1mindex 5cfe834..64702e5 100644[m
[1m--- a/ranking/views.py[m
[1m+++ b/ranking/views.py[m
[36m@@ -15,3 +15,42 @@[m [mclass RankingViewSet(viewsets.ModelViewSet):[m
         rankings = Ranking.objects.filter(trivia=trivia).order_by('-score')[m
         serializer = RankingSerializer(rankings, many=True)[m
         return Response(serializer.data)[m
[32m+[m
[32m+[m[32mfrom rest_framework.decorators import action[m
[32m+[m[32mfrom rest_framework.response import Response[m
[32m+[m[32mfrom rest_framework import status, viewsets[m
[32m+[m[32mfrom .models import Participation[m
[32m+[m[32mfrom .serializers import ParticipationSerializer[m
[32m+[m
[32m+[m[32mclass ParticipationViewSet(viewsets.ModelViewSet):[m
[32m+[m[32m    queryset = Participation.objects.all()[m
[32m+[m[32m    serializer_class = ParticipationSerializer[m
[32m+[m
[32m+[m[32m    # Otras vistas existentes...[m
[32m+[m
[32m+[m[32m    @action(detail=True, methods=['get'])[m
[32m+[m[32m    def ranking(self, request, pk=None):[m
[32m+[m[32m        """[m
[32m+[m[32m        Obtiene el ranking de usuarios de una trivia específica, ordenado por puntaje.[m
[32m+[m[32m        """[m
[32m+[m[32m        # Asegurarnos de que se está pasando un ID de trivia válido[m
[32m+[m[32m        try:[m
[32m+[m[32m            trivia_id = pk[m
[32m+[m[32m            participations = Participation.objects.filter(trivia__id=trivia_id).order_by('-score')[m
[32m+[m[41m            [m
[32m+[m[32m            # Serializamos las participaciones[m
[32m+[m[32m            serializer = ParticipationSerializer(participations, many=True)[m
[32m+[m[41m            [m
[32m+[m[32m            # Creamos un ranking basado en los puntajes[m
[32m+[m[32m            ranking = [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "user": participation.user.username,[m
[32m+[m[32m                    "score": participation.score[m
[32m+[m[32m                }[m
[32m+[m[32m                for participation in participations[m
[32m+[m[32m            ][m
[32m+[m[41m            [m
[32m+[m[32m            return Response(ranking, status=status.HTTP_200_OK)[m
[32m+[m[41m        [m
[32m+[m[32m        except Participation.DoesNotExist:[m
[32m+[m[32m            return Response({"detail": "No hay participaciones para esta trivia."}, status=status.HTTP_404_NOT_FOUND)[m
[1mdiff --git a/tala_trivia/__pycache__/settings.cpython-311.pyc b/tala_trivia/__pycache__/settings.cpython-311.pyc[m
[1mindex 55a1eca..60ac54b 100644[m
Binary files a/tala_trivia/__pycache__/settings.cpython-311.pyc and b/tala_trivia/__pycache__/settings.cpython-311.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/settings.cpython-313.pyc b/tala_trivia/__pycache__/settings.cpython-313.pyc[m
[1mindex e016ed5..2b6fb3b 100644[m
Binary files a/tala_trivia/__pycache__/settings.cpython-313.pyc and b/tala_trivia/__pycache__/settings.cpython-313.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/urls.cpython-313.pyc b/tala_trivia/__pycache__/urls.cpython-313.pyc[m
[1mindex bb63379..f06c899 100644[m
Binary files a/tala_trivia/__pycache__/urls.cpython-313.pyc and b/tala_trivia/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/tala_trivia/urls.py b/tala_trivia/urls.py[m
[1mindex 3e1a5a7..3b1eab4 100644[m
[1m--- a/tala_trivia/urls.py[m
[1m+++ b/tala_trivia/urls.py[m
[36m@@ -35,17 +35,3 @@[m [murlpatterns = [[m
     # Si prefieres la documentación en formato ReDoc, también puedes agregarla:[m
     path('redoc/', schema_view.with_ui('redoc', cache_timeout=0), name='schema-redoc'),[m
 ][m
[31m-[m
[31m-# # tala_trivia/urls.py (o el archivo `urls.py` principal de tu proyecto)[m
[31m-# from django.contrib import admin[m
[31m-# from django.urls import path, include[m
[31m-# from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView[m
[31m-[m
[31m-# urlpatterns = [[m
[31m-#     path('admin/', admin.site.urls),[m
[31m-#     path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),[m
[31m-#     path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),[m
[31m-#     path('api/users/', include('users.urls')),  # Asegúrate de incluir esta línea[m
[31m-#     path('questions/', include('questions.urls')),  # Asegúrate de incluir esta línea[m
[31m-# ][m
[31m-[m
[1mdiff --git a/trivias/__pycache__/admin.cpython-313.pyc b/trivias/__pycache__/admin.cpython-313.pyc[m
[1mindex c36e394..44413f2 100644[m
Binary files a/trivias/__pycache__/admin.cpython-313.pyc and b/trivias/__pycache__/admin.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/models.cpython-313.pyc b/trivias/__pycache__/models.cpython-313.pyc[m
[1mindex e5c670d..6f016f5 100644[m
Binary files a/trivias/__pycache__/models.cpython-313.pyc and b/trivias/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/permissions.cpython-313.pyc b/trivias/__pycache__/permissions.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..20a0abc[m
Binary files /dev/null and b/trivias/__pycache__/permissions.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/serializers.cpython-313.pyc b/trivias/__pycache__/serializers.cpython-313.pyc[m
[1mindex 5b8fc72..2b007c2 100644[m
Binary files a/trivias/__pycache__/serializers.cpython-313.pyc and b/trivias/__pycache__/serializers.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/urls.cpython-313.pyc b/trivias/__pycache__/urls.cpython-313.pyc[m
[1mindex ecc81b6..ab31c3e 100644[m
Binary files a/trivias/__pycache__/urls.cpython-313.pyc and b/trivias/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/views.cpython-313.pyc b/trivias/__pycache__/views.cpython-313.pyc[m
[1mindex 0d9a390..05ace9b 100644[m
Binary files a/trivias/__pycache__/views.cpython-313.pyc and b/trivias/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/trivias/admin.py b/trivias/admin.py[m
[1mindex c9b73cf..9ad48df 100644[m
[1m--- a/trivias/admin.py[m
[1m+++ b/trivias/admin.py[m
[36m@@ -1,22 +1,18 @@[m
 from django.contrib import admin[m
[31m-[m
[31m-# Register your models here.[m
[31m-from django.contrib import admin[m
 from .models import Trivia, Participation[m
[31m-from django.contrib.auth import get_user_model[m
[31m-from questions.models import Question[m
 [m
 # Personalización del modelo Trivia[m
 class TriviaAdmin(admin.ModelAdmin):[m
[31m-    list_display = ('name', 'description', 'get_users', 'get_questions')[m
[31m-    search_fields = ('name', 'description')[m
[31m-    list_filter = ('name',)[m
[31m-    [m
[32m+[m[32m    list_display = ('name', 'description', 'get_users', 'get_questions', 'creator', 'created_at')[m
[32m+[m[32m    search_fields = ('name', 'description', 'creator__username')[m
[32m+[m[32m    list_filter = ('created_at',)[m
[32m+[m[32m    filter_horizontal = ('users', 'questions')  # Facilita la selección de usuarios y preguntas en el admin[m
[32m+[m
     # Métodos para mostrar los usuarios y preguntas asociados a la trivia[m
     def get_users(self, obj):[m
         return ", ".join([user.username for user in obj.users.all()])[m
     get_users.short_description = 'Users'[m
[31m-    [m
[32m+[m
     def get_questions(self, obj):[m
         return ", ".join([str(question) for question in obj.questions.all()])[m
     get_questions.short_description = 'Questions'[m
[36m@@ -25,8 +21,9 @@[m [mclass TriviaAdmin(admin.ModelAdmin):[m
 class ParticipationAdmin(admin.ModelAdmin):[m
     list_display = ('user', 'trivia', 'score', 'get_answers')[m
     search_fields = ('user__username', 'trivia__name')[m
[31m-    list_filter = ('score',)[m
[31m-    [m
[32m+[m[32m    list_filter = ('score', 'trivia__name')[m
[32m+[m[32m    readonly_fields = ('score',)  # Hacer que el puntaje sea de solo lectura[m
[32m+[m
     # Método para mostrar las respuestas del usuario en formato legible[m
     def get_answers(self, obj):[m
         return str(obj.answers)[m
[1mdiff --git a/trivias/migrations/0004_alter_participation_options_and_more.py b/trivias/migrations/0004_alter_participation_options_and_more.py[m
[1mnew file mode 100644[m
[1mindex 0000000..48bf2b9[m
[1m--- /dev/null[m
[1m+++ b/trivias/migrations/0004_alter_participation_options_and_more.py[m
[36m@@ -0,0 +1,30 @@[m
[32m+[m[32m# Generated by Django 5.1.3 on 2024-11-24 22:42[m
[32m+[m
[32m+[m[32mimport django.db.models.deletion[m
[32m+[m[32mfrom django.conf import settings[m
[32m+[m[32mfrom django.db import migrations, models[m
[32m+[m
[32m+[m
[32m+[m[32mclass Migration(migrations.Migration):[m
[32m+[m
[32m+[m[32m    dependencies = [[m
[32m+[m[32m        ('trivias', '0003_trivia_created_at'),[m
[32m+[m[32m        migrations.swappable_dependency(settings.AUTH_USER_MODEL),[m
[32m+[m[32m    ][m
[32m+[m
[32m+[m[32m    operations = [[m
[32m+[m[32m        migrations.AlterModelOptions([m
[32m+[m[32m            name='participation',[m
[32m+[m[32m            options={'verbose_name': 'Participation', 'verbose_name_plural': 'Participations'},[m
[32m+[m[32m        ),[m
[32m+[m[32m        migrations.AlterField([m
[32m+[m[32m            model_name='participation',[m
[32m+[m[32m            name='trivia',[m
[32m+[m[32m            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='participations', to='trivias.trivia'),[m
[32m+[m[32m        ),[m
[32m+[m[32m        migrations.AlterField([m
[32m+[m[32m            model_name='participation',[m
[32m+[m[32m            name='user',[m
[32m+[m[32m            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='participations', to=settings.AUTH_USER_MODEL),[m
[32m+[m[32m        ),[m
[32m+[m[32m    ][m
[1mdiff --git a/trivias/migrations/__pycache__/0004_alter_participation_options_and_more.cpython-313.pyc b/trivias/migrations/__pycache__/0004_alter_participation_options_and_more.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..243152d[m
Binary files /dev/null and b/trivias/migrations/__pycache__/0004_alter_participation_options_and_more.cpython-313.pyc differ
[1mdiff --git a/trivias/models.py b/trivias/models.py[m
[1mindex 54261e4..4bcd0f5 100644[m
[1m--- a/trivias/models.py[m
[1m+++ b/trivias/models.py[m
[36m@@ -1,6 +1,5 @@[m
 # trivias/models.py[m
[31m-# Create your models here.[m
[31m-# trivias/models.py[m
[32m+[m[32mfrom django.contrib.auth import get_user_model[m
 from django.db import models[m
 from users.models import CustomUser[m
 from questions.models import Question[m
[36m@@ -16,23 +15,48 @@[m [mclass Trivia(models.Model):[m
     def __str__(self):[m
         return self.name[m
 [m
[32m+[m[32m# Usamos el CustomUser definido[m
[32m+[m[32mCustomUser = get_user_model()[m
 [m
 class Participation(models.Model):[m
[31m-    user = models.ForeignKey(CustomUser, on_delete=models.CASCADE)[m
[31m-    trivia = models.ForeignKey(Trivia, on_delete=models.CASCADE)[m
[31m-    answers = models.JSONField()  # Almacena las respuestas del usuario[m
[31m-    score = models.IntegerField(default=0)[m
[32m+[m[32m    trivia = models.ForeignKey(Trivia, related_name='participations', on_delete=models.CASCADE)[m
[32m+[m[32m    user = models.ForeignKey(CustomUser, related_name='participations', on_delete=models.CASCADE)  # Usamos CustomUser[m
[32m+[m[32m    answers = models.JSONField()  # Almacenar las respuestas como un diccionario JSON[m
[32m+[m[32m    score = models.IntegerField(default=0)  # Puntaje obtenido por el usuario[m
 [m
     def calculate_score(self):[m
[32m+[m[32m        """[m
[32m+[m[32m        Calcula el puntaje total basado en las respuestas y la dificultad de las preguntas.[m
[32m+[m[32m        - 1 punto para preguntas fáciles[m
[32m+[m[32m        - 2 puntos para preguntas medianas[m
[32m+[m[32m        - 3 puntos para preguntas difíciles[m
[32m+[m[32m        """[m
         total_score = 0[m
[32m+[m
[32m+[m[32m        # Iterar sobre las respuestas proporcionadas[m
         for question_id, answer in self.answers.items():[m
[31m-            question = Question.objects.get(id=question_id)[m
[32m+[m[32m            try:[m
[32m+[m[32m                question = Question.objects.get(id=question_id)[m
[32m+[m[32m            except Question.DoesNotExist:[m
[32m+[m[32m                continue  # Si no se encuentra la pregunta, se omite[m
[32m+[m
[32m+[m[32m            # Verificar si la respuesta es correcta[m
             if question.correct_answer == answer:[m
[32m+[m[32m                # Calcular puntaje según la dificultad de la pregunta[m
                 if question.level == 'easy':[m
                     total_score += 1[m
                 elif question.level == 'medium':[m
                     total_score += 2[m
                 elif question.level == 'hard':[m
                     total_score += 3[m
[32m+[m
[32m+[m[32m        # Asignar el puntaje total y guardar la participación[m
         self.score = total_score[m
         self.save()[m
[32m+[m
[32m+[m[32m    def __str__(self):[m
[32m+[m[32m        return f"Participation of {self.user.username} in Trivia {self.trivia.name} - Score: {self.score}"[m
[32m+[m
[32m+[m[32m    class Meta:[m
[32m+[m[32m        verbose_name = 'Participation'[m
[32m+[m[32m        verbose_name_plural = 'Participations'[m
[1mdiff --git a/trivias/permissions.py b/trivias/permissions.py[m
[1mindex 591ad90..6be5677 100644[m
[1m--- a/trivias/permissions.py[m
[1m+++ b/trivias/permissions.py[m
[36m@@ -2,16 +2,29 @@[m [mfrom rest_framework import permissions[m
 [m
 class IsAdminUserOrCreatorOrReadOnly(permissions.BasePermission):[m
     """[m
[31m-    Permiso personalizado que permite que los administradores y creadores de la trivia puedan editarla.[m
[32m+[m[32m    Permiso personalizado que permite que los administradores y creadores de la participación puedan editarla.[m
     Los usuarios normales solo pueden realizar operaciones de lectura.[m
     """[m
 [m
     def has_permission(self, request, view):[m
[31m-        trivia = view.get_object() if hasattr(view, 'get_object') else None[m
[31m-        [m
[31m-        # Si el usuario es administrador o creador de la trivia, permitir edición[m
[31m-        if request.user and (request.user.is_staff or request.user == trivia.creator):[m
[32m+[m[32m        # Si el método es SAFE_METHODS (lectura), se permite a todos los usuarios[m
[32m+[m[32m        if request.method in permissions.SAFE_METHODS:[m
             return True[m
[31m-        elif request.method in permissions.SAFE_METHODS:[m
[31m-            return True  # Métodos seguros (GET, HEAD, OPTIONS) son permitidos para todos[m
[32m+[m[41m        [m
[32m+[m[32m        # Verificar si el usuario está autenticado y tiene privilegios para modificar[m
[32m+[m[32m        if request.user.is_staff:[m
[32m+[m[32m            return True  # Los administradores pueden hacer cualquier cosa[m
[32m+[m
[32m+[m[32m        # Si es un método de escritura (POST, PUT, DELETE), comprobamos el creador de la participación[m
[32m+[m[32m        if request.method == 'POST':[m
[32m+[m[32m            return True  # Permitir crear una nueva participación[m
[32m+[m
[32m+[m[32m        # Si no es administrador, solo el creador puede modificar la participación[m
         return False[m
[32m+[m
[32m+[m[32m    def has_object_permission(self, request, view, obj):[m
[32m+[m[32m        """[m
[32m+[m[32m        Verifica si el usuario tiene permiso para ver o modificar un objeto específico de 'participation'.[m
[32m+[m[32m        """[m
[32m+[m[32m        # Si el usuario es administrador o creador de la participación, permitimos la acción[m
[32m+[m[32m        return request.user.is_staff or obj.user == request.user[m
[1mdiff --git a/trivias/serializers.py b/trivias/serializers.py[m
[1mindex 90c2e1a..08ac115 100644[m
[1m--- a/trivias/serializers.py[m
[1m+++ b/trivias/serializers.py[m
[36m@@ -2,6 +2,7 @@[m [mfrom rest_framework import serializers[m
 from .models import Trivia[m
 from users.models import CustomUser[m
 from questions.models import Question[m
[32m+[m[32mfrom .models import Participation[m
 [m
 class TriviaSerializer(serializers.ModelSerializer):[m
     users = serializers.PrimaryKeyRelatedField([m
[36m@@ -54,3 +55,16 @@[m [mclass TriviaSerializer(serializers.ModelSerializer):[m
         instance.users.set(users)  # Actualizar usuarios[m
         instance.questions.set(questions)  # Actualizar preguntas[m
         return instance[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32mclass ParticipationSerializer(serializers.ModelSerializer):[m
[32m+[m[32m    class Meta:[m
[32m+[m[32m        model = Participation[m
[32m+[m[32m        fields = ['id', 'trivia', 'user', 'answers', 'score'][m
[32m+[m[41m    [m
[32m+[m[32m    def validate(self, data):[m
[32m+[m[32m        # Validar que el usuario no participe más de una vez en la misma trivia[m
[32m+[m[32m        if Participation.objects.filter(user=data['user'], trivia=data['trivia']).exists():[m
[32m+[m[32m            raise serializers.ValidationError("Ya participaste en esta trivia.")[m
[32m+[m[32m        return data[m
[1mdiff --git a/trivias/urls.py b/trivias/urls.py[m
[1mindex ebb2a82..523da3d 100644[m
[1m--- a/trivias/urls.py[m
[1m+++ b/trivias/urls.py[m
[36m@@ -1,24 +1,17 @@[m
[31m-# # trivias/urls.py[m
[31m-# from django.urls import path[m
[31m-# from .views import TriviaListView, TriviaDetailView, TriviaCreateView, TriviaEditView, TriviaDeleteView[m
[31m-[m
[31m-# urlpatterns = [[m
[31m-#     path('trivias/', TriviaListView.as_view(), name='trivia-list'),  # Listar todas las trivias[m
[31m-#     path('trivias/<int:pk>/', TriviaDetailView.as_view(), name='trivia-detail'),  # Detalle de una trivia[m
[31m-#     path('trivias/create/', TriviaCreateView.as_view(), name='trivia-create'),  # Crear una nueva trivia[m
[31m-#     path('trivias/<int:pk>/edit/', TriviaEditView.as_view(), name='trivia-edit'),  # Editar una trivia[m
[31m-#     path('trivias/<int:pk>/delete/', TriviaDeleteView.as_view(), name='trivia-delete'),  # Eliminar una trivia[m
[31m-# ][m
[32m+[m[32m# trivias/urls.py[m
 from django.urls import path, include[m
 from rest_framework.routers import DefaultRouter[m
 from . import views[m
[32m+[m[32mfrom .views import ParticipationViewSet[m
 [m
[31m-# Configura el router para las vistas del ViewSet[m
[32m+[m[32m# Configura el router para las vistas del ViewSet de 'trivias'[m
 router = DefaultRouter()[m
 router.register(r'trivias', views.TriviaViewSet)[m
 [m
[32m+[m[32m# Configura el router para las vistas del ViewSet de 'participations'[m
[32m+[m[32mrouter.register(r'participations', ParticipationViewSet)[m
[32m+[m
 urlpatterns = [[m
     # Incluye las rutas generadas por el router[m
     path('', include(router.urls)),  # Esto incluirá las rutas del ViewSet automáticamente[m
 ][m
[31m-[m
[1mdiff --git a/trivias/views.py b/trivias/views.py[m
[1mindex ec0c190..f8b52d8 100644[m
[1m--- a/trivias/views.py[m
[1m+++ b/trivias/views.py[m
[36m@@ -1,15 +1,15 @@[m
[31m-from rest_framework import status[m
 from rest_framework.response import Response[m
 from rest_framework.decorators import action[m
 from rest_framework import viewsets[m
 from .models import Trivia, Participation[m
[31m-from .serializers import TriviaSerializer[m
[32m+[m[32mfrom .serializers import ParticipationSerializer, TriviaSerializer[m
 from rest_framework.exceptions import NotFound, ValidationError[m
 from questions.models import Question[m
 from django.db import models[m
 from users.models import CustomUser[m
[31m-from trivias.models import Trivia[m
[31m-[m
[32m+[m[32mfrom rest_framework import viewsets, status[m
[32m+[m[32mfrom rest_framework.permissions import IsAuthenticated[m
[32m+[m[32mfrom .permissions import IsAdminUserOrCreatorOrReadOnly[m
 [m
 [m
 [m
[36m@@ -75,30 +75,41 @@[m [mclass TriviaViewSet(viewsets.ModelViewSet):[m
         trivia.users.add(user)[m
         return Response({'message': 'User added successfully'}, status=status.HTTP_200_OK)[m
 [m
[31m-#### **`trivias/models.py`** (Optimización de `calculate_score`):[m
[31m-[m
[31m-[m
[31m-# class Participation(models.Model):[m
[31m-#     user = models.ForeignKey(CustomUser, on_delete=models.CASCADE)[m
[31m-#     trivia = models.ForeignKey(Trivia, on_delete=models.CASCADE)[m
[31m-#     answers = models.JSONField()  # Almacena las respuestas del usuario[m
[31m-#     score = models.IntegerField(default=0)[m
[31m-    [m
[31m-#     def calculate_score(self):[m
[31m-#         # Obtenemos todas las preguntas asociadas a la trivia[m
[31m-#         trivia_questions = self.trivia.questions.all()[m
[31m-#         question_dict = {question.id: question for question in trivia_questions}[m
[31m-[m
[31m-#         total_score = 0[m
[31m-#         for question_id, answer in self.answers.items():[m
[31m-#             # Verificar si la pregunta existe en las preguntas de la trivia[m
[31m-#             if question_id not in question_dict:[m
[31m-#                 raise ValidationError(f"Answer for question ID {question_id} does not belong to this trivia.")[m
[31m-            [m
[31m-#             question = question_dict[question_id][m
[31m-#             if question.correct_answer == answer:[m
[31m-#                 total_score += {'easy': 1, 'medium': 2, 'hard': 3}.get(question.level, 0)[m
 [m
[31m-#         self.score = total_score[m
[31m-#         self.save()[m
[32m+[m
[32m+[m[32mclass ParticipationViewSet(viewsets.ModelViewSet):[m
[32m+[m[32m    queryset = Participation.objects.all()[m
[32m+[m[32m    serializer_class = ParticipationSerializer[m
[32m+[m[32m    permission_classes = [IsAuthenticated, IsAdminUserOrCreatorOrReadOnly]  # Puedes agregar tus permisos personalizados[m
[32m+[m
[32m+[m[32m    def perform_create(self, serializer):[m
[32m+[m[32m        """[m
[32m+[m[32m        Guarda la participación asociando el usuario autenticado como creador.[m
[32m+[m[32m        """[m
[32m+[m[32m        serializer.save(user=self.request.user)[m
[32m+[m
[32m+[m[32m    def get_queryset(self):[m
[32m+[m[32m        """[m
[32m+[m[32m        Filtra las participaciones por el usuario autenticado.[m
[32m+[m[32m        """[m
[32m+[m[32m        return Participation.objects.filter(user=self.request.user)[m
[32m+[m
[32m+[m[32m    @action(detail=True, methods=['post'])[m
[32m+[m[32m    def submit_answers(self, request, pk=None):[m
[32m+[m[32m        """[m
[32m+[m[32m        Acción personalizada para enviar las respuestas a una participación.[m
[32m+[m[32m        Calcula el puntaje basado en las respuestas del usuario.[m
[32m+[m[32m        """[m
[32m+[m[32m        participation = self.get_object()  # Obtén la participación específica[m
[32m+[m[32m        answers = request.data.get('answers')  # Obtén las respuestas enviadas[m
[32m+[m
[32m+[m[32m        if not answers:[m
[32m+[m[32m            return Response({"detail": "Se requieren respuestas para enviar."}, status=status.HTTP_400_BAD_REQUEST)[m
[32m+[m
[32m+[m[32m        # Actualiza las respuestas de la participación y recalcula el puntaje[m
[32m+[m[32m        participation.answers = answers[m
[32m+[m[32m        participation.calculate_score()  # Calcula el puntaje con el método de la participación[m
[32m+[m[32m        participation.save()[m
[32m+[m
[32m+[m[32m        return Response({'score': participation.score}, status=status.HTTP_200_OK)[m
 [m

[33mcommit 4cd9f0055551578ede7e69145c5d794c87030fea[m
Merge: ba87057 708d720
Author: Hector Cano <123791914+HectorCano1411@users.noreply.github.com>
Date:   Sun Nov 24 18:24:44 2024 -0300

    Merge pull request #3 from HectorCano1411/devHC2
    
    Cracion de CRUD trivias

[33mcommit 708d720da384367a51dd963dd06de28b61ed0cb4[m
Author: Hector Cano <hectorcanolealestudios@gmail.com>
Date:   Sun Nov 24 18:22:46 2024 -0300

    Cracion de CRUD trivias

[1mdiff --git a/questions/__pycache__/admin.cpython-313.pyc b/questions/__pycache__/admin.cpython-313.pyc[m
[1mindex b9aedb7..4f7a9b7 100644[m
Binary files a/questions/__pycache__/admin.cpython-313.pyc and b/questions/__pycache__/admin.cpython-313.pyc differ
[1mdiff --git a/questions/admin.py b/questions/admin.py[m
[1mindex 58c36c6..b0b82cd 100644[m
[1m--- a/questions/admin.py[m
[1m+++ b/questions/admin.py[m
[36m@@ -7,12 +7,19 @@[m [mclass QuestionAdmin(admin.ModelAdmin):[m
     search_fields = ('question_text', 'level', 'correct_answer')[m
     list_filter = ('level',)[m
     ordering = ['level', 'question_text'][m
[31m-    readonly_fields = ('question_text', 'level', 'correct_answer', 'get_options')[m
[32m+[m[32m    readonly_fields = ('get_options',)  # Hacemos solo las opciones de lectura[m
[32m+[m[41m    [m
[32m+[m[32m    # Agregar la capacidad de editar las opciones en el admin[m
[32m+[m[32m    fieldsets = ([m
[32m+[m[32m        (None, {[m
[32m+[m[32m            'fields': ('question_text', 'level', 'correct_answer', 'options')[m
[32m+[m[32m        }),[m
[32m+[m[32m    )[m
 [m
     # Método para mostrar las opciones de manera legible[m
     def get_options(self, obj):[m
         # 'obj' es la instancia de la pregunta[m
[31m-        return ', '.join([f"{key}: {value}" for key, value in obj.options.items()])[m
[32m+[m[32m        return ', '.join([f"{i+1}: {option}" for i, option in enumerate(obj.options)])[m
     get_options.short_description = 'Options'  # Este nombre aparecerá en el encabezado de la columna[m
 [m
 # Registrar el modelo Question en el admin de Django[m
[1mdiff --git a/tala_trivia/__pycache__/urls.cpython-313.pyc b/tala_trivia/__pycache__/urls.cpython-313.pyc[m
[1mindex ac39e42..bb63379 100644[m
Binary files a/tala_trivia/__pycache__/urls.cpython-313.pyc and b/tala_trivia/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/tala_trivia/urls.py b/tala_trivia/urls.py[m
[1mindex 4ce59ab..3e1a5a7 100644[m
[1m--- a/tala_trivia/urls.py[m
[1m+++ b/tala_trivia/urls.py[m
[36m@@ -26,6 +26,8 @@[m [murlpatterns = [[m
     path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),[m
     path('api/users/', include('users.urls')),  # Incluir las rutas de usuarios[m
     path('questions/', include('questions.urls')),  # Incluir las rutas de preguntas[m
[32m+[m[32m    path('api/', include('trivias.urls')),  # Incluir las URLs de la aplicación 'trivias'[m
[32m+[m
     [m
     # Agregar la ruta de Swagger para la documentación interactiva[m
     path('swagger/', schema_view.with_ui('swagger', cache_timeout=0), name='schema-swagger-ui'),[m
[1mdiff --git a/trivias/__pycache__/models.cpython-313.pyc b/trivias/__pycache__/models.cpython-313.pyc[m
[1mindex 035b84e..e5c670d 100644[m
Binary files a/trivias/__pycache__/models.cpython-313.pyc and b/trivias/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/serializers.cpython-313.pyc b/trivias/__pycache__/serializers.cpython-313.pyc[m
[1mindex 722beb2..5b8fc72 100644[m
Binary files a/trivias/__pycache__/serializers.cpython-313.pyc and b/trivias/__pycache__/serializers.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/urls.cpython-313.pyc b/trivias/__pycache__/urls.cpython-313.pyc[m
[1mindex c09f553..ecc81b6 100644[m
Binary files a/trivias/__pycache__/urls.cpython-313.pyc and b/trivias/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/views.cpython-313.pyc b/trivias/__pycache__/views.cpython-313.pyc[m
[1mindex 1636618..0d9a390 100644[m
Binary files a/trivias/__pycache__/views.cpython-313.pyc and b/trivias/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/trivias/migrations/0002_trivia_creator.py b/trivias/migrations/0002_trivia_creator.py[m
[1mnew file mode 100644[m
[1mindex 0000000..037e002[m
[1m--- /dev/null[m
[1m+++ b/trivias/migrations/0002_trivia_creator.py[m
[36m@@ -0,0 +1,21 @@[m
[32m+[m[32m# Generated by Django 5.1.3 on 2024-11-24 18:08[m
[32m+[m
[32m+[m[32mimport django.db.models.deletion[m
[32m+[m[32mfrom django.conf import settings[m
[32m+[m[32mfrom django.db import migrations, models[m
[32m+[m
[32m+[m
[32m+[m[32mclass Migration(migrations.Migration):[m
[32m+[m
[32m+[m[32m    dependencies = [[m
[32m+[m[32m        ('trivias', '0001_initial'),[m
[32m+[m[32m        migrations.swappable_dependency(settings.AUTH_USER_MODEL),[m
[32m+[m[32m    ][m
[32m+[m
[32m+[m[32m    operations = [[m
[32m+[m[32m        migrations.AddField([m
[32m+[m[32m            model_name='trivia',[m
[32m+[m[32m            name='creator',[m
[32m+[m[32m            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),[m
[32m+[m[32m        ),[m
[32m+[m[32m    ][m
[1mdiff --git a/trivias/migrations/0003_trivia_created_at.py b/trivias/migrations/0003_trivia_created_at.py[m
[1mnew file mode 100644[m
[1mindex 0000000..221950d[m
[1m--- /dev/null[m
[1m+++ b/trivias/migrations/0003_trivia_created_at.py[m
[36m@@ -0,0 +1,20 @@[m
[32m+[m[32m# Generated by Django 5.1.3 on 2024-11-24 18:51[m
[32m+[m
[32m+[m[32mimport django.utils.timezone[m
[32m+[m[32mfrom django.db import migrations, models[m
[32m+[m
[32m+[m
[32m+[m[32mclass Migration(migrations.Migration):[m
[32m+[m
[32m+[m[32m    dependencies = [[m
[32m+[m[32m        ('trivias', '0002_trivia_creator'),[m
[32m+[m[32m    ][m
[32m+[m
[32m+[m[32m    operations = [[m
[32m+[m[32m        migrations.AddField([m
[32m+[m[32m            model_name='trivia',[m
[32m+[m[32m            name='created_at',[m
[32m+[m[32m            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now),[m
[32m+[m[32m            preserve_default=False,[m
[32m+[m[32m        ),[m
[32m+[m[32m    ][m
[1mdiff --git a/trivias/migrations/__pycache__/0002_trivia_creator.cpython-313.pyc b/trivias/migrations/__pycache__/0002_trivia_creator.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..3df4d73[m
Binary files /dev/null and b/trivias/migrations/__pycache__/0002_trivia_creator.cpython-313.pyc differ
[1mdiff --git a/trivias/migrations/__pycache__/0003_trivia_created_at.cpython-313.pyc b/trivias/migrations/__pycache__/0003_trivia_created_at.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..cdf62cd[m
Binary files /dev/null and b/trivias/migrations/__pycache__/0003_trivia_created_at.cpython-313.pyc differ
[1mdiff --git a/trivias/models.py b/trivias/models.py[m
[1mindex 5c5f524..54261e4 100644[m
[1m--- a/trivias/models.py[m
[1m+++ b/trivias/models.py[m
[36m@@ -1,5 +1,4 @@[m
[31m-from django.db import models[m
[31m-[m
[32m+[m[32m# trivias/models.py[m
 # Create your models here.[m
 # trivias/models.py[m
 from django.db import models[m
[36m@@ -11,18 +10,19 @@[m [mclass Trivia(models.Model):[m
     description = models.TextField()[m
     users = models.ManyToManyField(CustomUser, related_name='trivias')[m
     questions = models.ManyToManyField(Question, related_name='trivias')[m
[32m+[m[32m    creator = models.ForeignKey(CustomUser, on_delete=models.CASCADE, default=1)[m
[32m+[m[32m    created_at = models.DateTimeField(auto_now_add=True)  # Solo auto_now_add[m
     [m
     def __str__(self):[m
         return self.name[m
 [m
[31m-# trivias/models.py[m
 [m
 class Participation(models.Model):[m
     user = models.ForeignKey(CustomUser, on_delete=models.CASCADE)[m
     trivia = models.ForeignKey(Trivia, on_delete=models.CASCADE)[m
     answers = models.JSONField()  # Almacena las respuestas del usuario[m
     score = models.IntegerField(default=0)[m
[31m-    [m
[32m+[m
     def calculate_score(self):[m
         total_score = 0[m
         for question_id, answer in self.answers.items():[m
[1mdiff --git a/trivias/permissions.py b/trivias/permissions.py[m
[1mindex dcc94bc..591ad90 100644[m
[1m--- a/trivias/permissions.py[m
[1m+++ b/trivias/permissions.py[m
[36m@@ -1,17 +1,17 @@[m
[31m-# trivias/permissions.py[m
 from rest_framework import permissions[m
 [m
[31m-class IsAdminUserOrReadOnly(permissions.BasePermission):[m
[32m+[m[32mclass IsAdminUserOrCreatorOrReadOnly(permissions.BasePermission):[m
     """[m
[31m-    Permiso personalizado que solo permite que los administradores[m
[31m-    puedan realizar operaciones de escritura (POST, PUT, DELETE).[m
[31m-    Los usuarios normales solo pueden realizar operaciones de lectura (GET).[m
[32m+[m[32m    Permiso personalizado que permite que los administradores y creadores de la trivia puedan editarla.[m
[32m+[m[32m    Los usuarios normales solo pueden realizar operaciones de lectura.[m
     """[m
 [m
     def has_permission(self, request, view):[m
[31m-        # Verificar si el usuario es administrador[m
[31m-        if request.user and request.user.is_staff:[m
[31m-            return True  # Administradores tienen todos los permisos[m
[32m+[m[32m        trivia = view.get_object() if hasattr(view, 'get_object') else None[m
[32m+[m[41m        [m
[32m+[m[32m        # Si el usuario es administrador o creador de la trivia, permitir edición[m
[32m+[m[32m        if request.user and (request.user.is_staff or request.user == trivia.creator):[m
[32m+[m[32m            return True[m
         elif request.method in permissions.SAFE_METHODS:[m
             return True  # Métodos seguros (GET, HEAD, OPTIONS) son permitidos para todos[m
[31m-        return False  # Los demás usuarios no pueden modificar[m
[32m+[m[32m        return False[m
[1mdiff --git a/trivias/serializers.py b/trivias/serializers.py[m
[1mindex 9cfb618..90c2e1a 100644[m
[1m--- a/trivias/serializers.py[m
[1m+++ b/trivias/serializers.py[m
[36m@@ -1,13 +1,56 @@[m
[31m-# trivias/serializers.py[m
 from rest_framework import serializers[m
 from .models import Trivia[m
[31m-from users.serializers import UserSerializer[m
[31m-from questions.serializers import QuestionSerializer[m
[32m+[m[32mfrom users.models import CustomUser[m
[32m+[m[32mfrom questions.models import Question[m
 [m
 class TriviaSerializer(serializers.ModelSerializer):[m
[31m-    users = UserSerializer(many=True)[m
[31m-    questions = QuestionSerializer(many=True)[m
[32m+[m[32m    users = serializers.PrimaryKeyRelatedField([m
[32m+[m[32m        many=True,[m
[32m+[m[32m        queryset=CustomUser.objects.all(),[m
[32m+[m[32m        write_only=True[m
[32m+[m[32m    )[m
[32m+[m[32m    questions = serializers.PrimaryKeyRelatedField([m
[32m+[m[32m        many=True,[m
[32m+[m[32m        queryset=Question.objects.all(),[m
[32m+[m[32m        write_only=True[m
[32m+[m[32m    )[m
[32m+[m[32m    creator = serializers.PrimaryKeyRelatedField([m
[32m+[m[32m        queryset=CustomUser.objects.all()[m
[32m+[m[32m    )[m
[32m+[m
[32m+[m[32m    # Para la representación (lectura)[m
[32m+[m[32m    users_details = serializers.SerializerMethodField()[m
[32m+[m[32m    questions_details = serializers.SerializerMethodField()[m
 [m
     class Meta:[m
         model = Trivia[m
[31m-        fields = ['id', 'name', 'description', 'users', 'questions'][m
[32m+[m[32m        fields = ['id', 'name', 'description', 'users', 'users_details', 'questions', 'questions_details', 'creator'][m
[32m+[m[32m        extra_kwargs = {[m
[32m+[m[32m            'creator': {'required': True}[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m    def get_users_details(self, obj):[m
[32m+[m[32m        """Representación detallada de usuarios"""[m
[32m+[m[32m        return [{"id": user.id, "username": user.username, "email": user.email} for user in obj.users.all()][m
[32m+[m
[32m+[m[32m    def get_questions_details(self, obj):[m
[32m+[m[32m        """Representación detallada de preguntas"""[m
[32m+[m[32m        return [{"id": question.id, "question_text": question.question_text, "level": question.level} for question in obj.questions.all()][m
[32m+[m
[32m+[m[32m    def create(self, validated_data):[m
[32m+[m[32m        users = validated_data.pop('users', [])[m
[32m+[m[32m        questions = validated_data.pop('questions', [])[m
[32m+[m[32m        trivia = Trivia.objects.create(**validated_data)[m
[32m+[m[32m        trivia.users.set(users)  # Asignar usuarios[m
[32m+[m[32m        trivia.questions.set(questions)  # Asignar preguntas[m
[32m+[m[32m        return trivia[m
[32m+[m
[32m+[m[32m    def update(self, instance, validated_data):[m
[32m+[m[32m        users = validated_data.pop('users', [])[m
[32m+[m[32m        questions = validated_data.pop('questions', [])[m
[32m+[m[32m        for attr, value in validated_data.items():[m
[32m+[m[32m            setattr(instance, attr, value)[m
[32m+[m[32m        instance.save()[m
[32m+[m[32m        instance.users.set(users)  # Actualizar usuarios[m
[32m+[m[32m        instance.questions.set(questions)  # Actualizar preguntas[m
[32m+[m[32m        return instance[m
[1mdiff --git a/trivias/urls.py b/trivias/urls.py[m
[1mindex b284759..ebb2a82 100644[m
[1m--- a/trivias/urls.py[m
[1m+++ b/trivias/urls.py[m
[36m@@ -9,4 +9,16 @@[m
 #     path('trivias/<int:pk>/edit/', TriviaEditView.as_view(), name='trivia-edit'),  # Editar una trivia[m
 #     path('trivias/<int:pk>/delete/', TriviaDeleteView.as_view(), name='trivia-delete'),  # Eliminar una trivia[m
 # ][m
[31m-    [m
\ No newline at end of file[m
[32m+[m[32mfrom django.urls import path, include[m
[32m+[m[32mfrom rest_framework.routers import DefaultRouter[m
[32m+[m[32mfrom . import views[m
[32m+[m
[32m+[m[32m# Configura el router para las vistas del ViewSet[m
[32m+[m[32mrouter = DefaultRouter()[m
[32m+[m[32mrouter.register(r'trivias', views.TriviaViewSet)[m
[32m+[m
[32m+[m[32murlpatterns = [[m
[32m+[m[32m    # Incluye las rutas generadas por el router[m
[32m+[m[32m    path('', include(router.urls)),  # Esto incluirá las rutas del ViewSet automáticamente[m
[32m+[m[32m][m
[32m+[m
[1mdiff --git a/trivias/views.py b/trivias/views.py[m
[1mindex 3465138..ec0c190 100644[m
[1m--- a/trivias/views.py[m
[1m+++ b/trivias/views.py[m
[36m@@ -4,6 +4,14 @@[m [mfrom rest_framework.decorators import action[m
 from rest_framework import viewsets[m
 from .models import Trivia, Participation[m
 from .serializers import TriviaSerializer[m
[32m+[m[32mfrom rest_framework.exceptions import NotFound, ValidationError[m
[32m+[m[32mfrom questions.models import Question[m
[32m+[m[32mfrom django.db import models[m
[32m+[m[32mfrom users.models import CustomUser[m
[32m+[m[32mfrom trivias.models import Trivia[m
[32m+[m
[32m+[m
[32m+[m
 [m
 class TriviaViewSet(viewsets.ModelViewSet):[m
     queryset = Trivia.objects.all()[m
[36m@@ -13,6 +21,18 @@[m [mclass TriviaViewSet(viewsets.ModelViewSet):[m
     def submit_answers(self, request, pk=None):[m
         trivia = self.get_object()[m
         answers = request.data.get('answers', {})[m
[32m+[m
[32m+[m[32m        # Verificar que las respuestas son válidas[m
[32m+[m[32m        for question_id, answer in answers.items():[m
[32m+[m[32m            try:[m
[32m+[m[32m                question = Question.objects.get(id=question_id)[m
[32m+[m[32m            except Question.DoesNotExist:[m
[32m+[m[32m                raise NotFound(f"Question with ID {question_id} does not exist.")[m
[32m+[m[41m            [m
[32m+[m[32m            if question not in trivia.questions.all():[m
[32m+[m[32m                raise ValidationError(f"Question ID {question_id} is not part of this trivia.")[m
[32m+[m
[32m+[m[32m        # Crear participación y calcular puntaje[m
         participation = Participation.objects.create([m
             trivia=trivia,[m
             user=request.user,[m
[36m@@ -25,19 +45,60 @@[m [mclass TriviaViewSet(viewsets.ModelViewSet):[m
     def add_question(self, request, pk=None):[m
         trivia = self.get_object()[m
         question_id = request.data.get('question_id')[m
[31m-        question = Question.objects.get(id=question_id)[m
[32m+[m
[32m+[m[32m        try:[m
[32m+[m[32m            question = Question.objects.get(id=question_id)[m
[32m+[m[32m        except Question.DoesNotExist:[m
[32m+[m[32m            raise NotFound(f"Question with ID {question_id} does not exist.")[m
[32m+[m
[32m+[m[32m        # Verificar si la pregunta ya está asociada a la trivia[m
[32m+[m[32m        if question in trivia.questions.all():[m
[32m+[m[32m            raise ValidationError(f"Question with ID {question_id} is already added to this trivia.")[m
[32m+[m
         trivia.questions.add(question)[m
         return Response({'message': 'Question added successfully'}, status=status.HTTP_200_OK)[m
[31m-    [m
[32m+[m
     @action(detail=True, methods=['post'])[m
     def add_user(self, request, pk=None):[m
         trivia = self.get_object()[m
[31m-        user = request.data.get('user_id')[m
[32m+[m[32m        user_id = request.data.get('user_id')[m
[32m+[m
[32m+[m[32m        try:[m
[32m+[m[32m            user = CustomUser.objects.get(id=user_id)[m
[32m+[m[32m        except CustomUser.DoesNotExist:[m
[32m+[m[32m            raise NotFound(f"User with ID {user_id} does not exist.")[m
[32m+[m
[32m+[m[32m        # Verificar si el usuario ya está asociado a la trivia[m
[32m+[m[32m        if user in trivia.users.all():[m
[32m+[m[32m            raise ValidationError(f"User with ID {user_id} is already added to this trivia.")[m
[32m+[m
         trivia.users.add(user)[m
         return Response({'message': 'User added successfully'}, status=status.HTTP_200_OK)[m
 [m
[32m+[m[32m#### **`trivias/models.py`** (Optimización de `calculate_score`):[m
 [m
 [m
[32m+[m[32m# class Participation(models.Model):[m
[32m+[m[32m#     user = models.ForeignKey(CustomUser, on_delete=models.CASCADE)[m
[32m+[m[32m#     trivia = models.ForeignKey(Trivia, on_delete=models.CASCADE)[m
[32m+[m[32m#     answers = models.JSONField()  # Almacena las respuestas del usuario[m
[32m+[m[32m#     score = models.IntegerField(default=0)[m
     [m
[32m+[m[32m#     def calculate_score(self):[m
[32m+[m[32m#         # Obtenemos todas las preguntas asociadas a la trivia[m
[32m+[m[32m#         trivia_questions = self.trivia.questions.all()[m
[32m+[m[32m#         question_dict = {question.id: question for question in trivia_questions}[m
[32m+[m
[32m+[m[32m#         total_score = 0[m
[32m+[m[32m#         for question_id, answer in self.answers.items():[m
[32m+[m[32m#             # Verificar si la pregunta existe en las preguntas de la trivia[m
[32m+[m[32m#             if question_id not in question_dict:[m
[32m+[m[32m#                 raise ValidationError(f"Answer for question ID {question_id} does not belong to this trivia.")[m
[32m+[m[41m            [m
[32m+[m[32m#             question = question_dict[question_id][m
[32m+[m[32m#             if question.correct_answer == answer:[m
[32m+[m[32m#                 total_score += {'easy': 1, 'medium': 2, 'hard': 3}.get(question.level, 0)[m
[32m+[m
[32m+[m[32m#         self.score = total_score[m
[32m+[m[32m#         self.save()[m
 [m
[31m-    [m
\ No newline at end of file[m
[1mdiff --git a/trivias_backup.json b/trivias_backup.json[m
[1mnew file mode 100644[m
[1mindex 0000000..05466eb[m
[1m--- /dev/null[m
[1m+++ b/trivias_backup.json[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m[{"model": "trivias.trivia", "pk": 1, "fields": {"name": "Trivia de Ejemplo", "description": "Una trivia para probar", "creator": 1, "created_at": "2024-11-24T19:01:41.971Z", "users": [1, 2], "questions": [1, 3, 6]}}][m
\ No newline at end of file[m

[33mcommit ba870570d08c3bf0064edf0ab42e2efc9057f800[m
Merge: 9fc14f7 908b069
Author: Hector Cano <123791914+HectorCano1411@users.noreply.github.com>
Date:   Sun Nov 24 14:22:34 2024 -0300

    Merge pull request #2 from HectorCano1411/devHC2
    
    Cracion de CRUD questions

[33mcommit 908b069776708f3bb2b342759d1deace3e5f8d0c[m
Author: Hector Cano <hectorcanolealestudios@gmail.com>
Date:   Sun Nov 24 14:20:53 2024 -0300

    Cracion de CRUD questions

[1mdiff --git a/questions/__pycache__/admin.cpython-313.pyc b/questions/__pycache__/admin.cpython-313.pyc[m
[1mindex 3eae79f..b9aedb7 100644[m
Binary files a/questions/__pycache__/admin.cpython-313.pyc and b/questions/__pycache__/admin.cpython-313.pyc differ
[1mdiff --git a/questions/__pycache__/apps.cpython-313.pyc b/questions/__pycache__/apps.cpython-313.pyc[m
[1mindex ae9ee29..7ee6610 100644[m
Binary files a/questions/__pycache__/apps.cpython-313.pyc and b/questions/__pycache__/apps.cpython-313.pyc differ
[1mdiff --git a/questions/__pycache__/forms.cpython-313.pyc b/questions/__pycache__/forms.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..ca7791f[m
Binary files /dev/null and b/questions/__pycache__/forms.cpython-313.pyc differ
[1mdiff --git a/questions/__pycache__/models.cpython-313.pyc b/questions/__pycache__/models.cpython-313.pyc[m
[1mindex c30b062..bc99874 100644[m
Binary files a/questions/__pycache__/models.cpython-313.pyc and b/questions/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/questions/__pycache__/permissions.cpython-313.pyc b/questions/__pycache__/permissions.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..eaa307c[m
Binary files /dev/null and b/questions/__pycache__/permissions.cpython-313.pyc differ
[1mdiff --git a/questions/__pycache__/serializers.cpython-313.pyc b/questions/__pycache__/serializers.cpython-313.pyc[m
[1mindex 1398678..04dc4d7 100644[m
Binary files a/questions/__pycache__/serializers.cpython-313.pyc and b/questions/__pycache__/serializers.cpython-313.pyc differ
[1mdiff --git a/questions/__pycache__/urls.cpython-313.pyc b/questions/__pycache__/urls.cpython-313.pyc[m
[1mindex 8897576..0f69543 100644[m
Binary files a/questions/__pycache__/urls.cpython-313.pyc and b/questions/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/questions/__pycache__/views.cpython-313.pyc b/questions/__pycache__/views.cpython-313.pyc[m
[1mindex fcd66ed..9958357 100644[m
Binary files a/questions/__pycache__/views.cpython-313.pyc and b/questions/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/questions/admin.py b/questions/admin.py[m
[1mindex 84522dd..58c36c6 100644[m
[1m--- a/questions/admin.py[m
[1m+++ b/questions/admin.py[m
[36m@@ -1,18 +1,19 @@[m
[32m+[m[32m# questions/admin.py[m
 from django.contrib import admin[m
 from .models import Question[m
 [m
[31m-# Personalización del modelo Question[m
 class QuestionAdmin(admin.ModelAdmin):[m
     list_display = ('question_text', 'level', 'correct_answer', 'get_options')[m
     search_fields = ('question_text', 'level', 'correct_answer')[m
[31m-    list_filter = ('level',)  # Filtros para las dificultades de las preguntas[m
[31m-    ordering = ['level', 'question_text']  # Ordenar por nivel y luego por texto de la pregunta[m
[32m+[m[32m    list_filter = ('level',)[m
[32m+[m[32m    ordering = ['level', 'question_text'][m
     readonly_fields = ('question_text', 'level', 'correct_answer', 'get_options')[m
 [m
     # Método para mostrar las opciones de manera legible[m
     def get_options(self, obj):[m
[32m+[m[32m        # 'obj' es la instancia de la pregunta[m
         return ', '.join([f"{key}: {value}" for key, value in obj.options.items()])[m
[31m-    get_options.short_description = 'Options'[m
[32m+[m[32m    get_options.short_description = 'Options'  # Este nombre aparecerá en el encabezado de la columna[m
 [m
 # Registrar el modelo Question en el admin de Django[m
 admin.site.register(Question, QuestionAdmin)[m
[1mdiff --git a/questions/apps.py b/questions/apps.py[m
[1mindex 3079f26..4503c93 100644[m
[1m--- a/questions/apps.py[m
[1m+++ b/questions/apps.py[m
[36m@@ -1,6 +1,34 @@[m
[32m+[m[32m# questions/apps.py[m
 from django.apps import AppConfig[m
[31m-[m
[32m+[m[32mfrom django.utils.module_loading import import_string[m
 [m
 class QuestionsConfig(AppConfig):[m
[31m-    default_auto_field = 'django.db.models.BigAutoField'[m
[31m-    name = 'questions'[m
[32m+[m[32m    default_auto_field = "django.db.models.BigAutoField"[m
[32m+[m[32m    name = "questions"[m
[32m+[m
[32m+[m[32m    def ready(self):[m
[32m+[m[32m        # Lógica que se ejecuta cuando las aplicaciones están cargadas[m
[32m+[m[32m        from django.contrib.auth.models import Group, Permission[m
[32m+[m[32m        from django.contrib.contenttypes.models import ContentType[m
[32m+[m[32m        from .models import Question  # Importación del modelo local[m
[32m+[m
[32m+[m[32m        # Crear grupos y asignar permisos[m
[32m+[m[32m        admin_group, _ = Group.objects.get_or_create(name='admin')[m
[32m+[m[32m        jugador_group, _ = Group.objects.get_or_create(name='jugador')[m
[32m+[m
[32m+[m[32m        # Obtener permisos específicos[m
[32m+[m[32m        content_type = ContentType.objects.get_for_model(Question)[m
[32m+[m[32m        can_add_question = Permission.objects.get_or_create([m
[32m+[m[32m            codename='add_question',[m
[32m+[m[32m            name='Can add question',[m
[32m+[m[32m            content_type=content_type,[m
[32m+[m[32m        )[0][m
[32m+[m[32m        can_change_question = Permission.objects.get_or_create([m
[32m+[m[32m            codename='change_question',[m
[32m+[m[32m            name='Can change question',[m
[32m+[m[32m            content_type=content_type,[m
[32m+[m[32m        )[0][m
[32m+[m
[32m+[m[32m        # Asignar permisos al grupo admin[m
[32m+[m[32m        admin_group.permissions.add(can_add_question, can_change_question)[m
[32m+[m[32m        # Opcional: Asignar permisos básicos al grupo jugador[m
[1mdiff --git a/questions/forms.py b/questions/forms.py[m
[1mnew file mode 100644[m
[1mindex 0000000..8e774b6[m
[1m--- /dev/null[m
[1m+++ b/questions/forms.py[m
[36m@@ -0,0 +1,14 @@[m
[32m+[m[32m# questions/forms.py[m
[32m+[m[32mfrom django import forms[m
[32m+[m[32mfrom .models import Question[m
[32m+[m
[32m+[m[32mclass QuestionForm(forms.ModelForm):[m
[32m+[m[32m    class Meta:[m
[32m+[m[32m        model = Question[m
[32m+[m[32m        fields = ['question_text', 'level', 'options', 'correct_answer'][m
[32m+[m[41m    [m
[32m+[m[32m    def clean_options(self):[m
[32m+[m[32m        options = self.cleaned_data['options'][m
[32m+[m[32m        if not isinstance(options, dict):[m
[32m+[m[32m            raise forms.ValidationError("Options should be a dictionary.")[m
[32m+[m[32m        return options[m
[1mdiff --git a/questions/management/commands/__pycache__/create_groups_and_permissions.cpython-313.pyc b/questions/management/commands/__pycache__/create_groups_and_permissions.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..d782a66[m
Binary files /dev/null and b/questions/management/commands/__pycache__/create_groups_and_permissions.cpython-313.pyc differ
[1mdiff --git a/questions/management/commands/__pycache__/insert_questions.cpython-313.pyc b/questions/management/commands/__pycache__/insert_questions.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..dfd2a38[m
Binary files /dev/null and b/questions/management/commands/__pycache__/insert_questions.cpython-313.pyc differ
[1mdiff --git a/questions/management/commands/create_groups_and_permissions.py b/questions/management/commands/create_groups_and_permissions.py[m
[1mnew file mode 100644[m
[1mindex 0000000..c99f3ae[m
[1m--- /dev/null[m
[1m+++ b/questions/management/commands/create_groups_and_permissions.py[m
[36m@@ -0,0 +1,31 @@[m
[32m+[m[32m# questions/management/commands/create_groups_and_permissions.py[m
[32m+[m[32mfrom django.core.management.base import BaseCommand[m
[32m+[m[32mfrom django.contrib.auth.models import Group, Permission[m
[32m+[m[32mfrom django.contrib.contenttypes.models import ContentType[m
[32m+[m[32mfrom questions.models import Question[m
[32m+[m
[32m+[m[32mclass Command(BaseCommand):[m
[32m+[m[32m    help = 'Crear grupos y asignar permisos para las preguntas'[m
[32m+[m
[32m+[m[32m    def handle(self, *args, **kwargs):[m
[32m+[m[32m        # Crear grupos[m
[32m+[m[32m        admin_group, _ = Group.objects.get_or_create(name='admin')[m
[32m+[m[32m        jugador_group, _ = Group.objects.get_or_create(name='jugador')[m
[32m+[m
[32m+[m[32m        # Obtener permisos[m
[32m+[m[32m        content_type = ContentType.objects.get_for_model(Question)[m
[32m+[m[32m        can_add_question = Permission.objects.get_or_create([m
[32m+[m[32m            codename='add_question',[m
[32m+[m[32m            name='Can add question',[m
[32m+[m[32m            content_type=content_type,[m
[32m+[m[32m        )[0][m
[32m+[m[32m        can_change_question = Permission.objects.get_or_create([m
[32m+[m[32m            codename='change_question',[m
[32m+[m[32m            name='Can change question',[m
[32m+[m[32m            content_type=content_type,[m
[32m+[m[32m        )[0][m
[32m+[m
[32m+[m[32m        # Asignar permisos al grupo admin[m
[32m+[m[32m        admin_group.permissions.add(can_add_question, can_change_question)[m
[32m+[m
[32m+[m[32m        self.stdout.write(self.style.SUCCESS('Grupos y permisos creados correctamente'))[m
[1mdiff --git a/questions/models.py b/questions/models.py[m
[1mindex 7610f57..d33b51c 100644[m
[1m--- a/questions/models.py[m
[1m+++ b/questions/models.py[m
[36m@@ -1,6 +1,6 @@[m
[31m-# Create your models here.[m
 # questions/models.py[m
 from django.db import models[m
[32m+[m[32mfrom django.core.exceptions import ValidationError[m
 [m
 class Question(models.Model):[m
     DIFFICULTY_CHOICES = [[m
[36m@@ -12,6 +12,21 @@[m [mclass Question(models.Model):[m
     level = models.CharField(choices=DIFFICULTY_CHOICES, max_length=10)[m
     options = models.JSONField()  # JSON to store multiple options[m
     correct_answer = models.CharField(max_length=255)[m
[31m-    [m
[32m+[m
[32m+[m[32m    def clean(self):[m
[32m+[m[32m        # Validar que la respuesta correcta está dentro de las opciones[m
[32m+[m[32m        if self.correct_answer not in self.options.values():[m
[32m+[m[32m            raise ValidationError("The correct answer must be one of the provided options.")[m
[32m+[m[41m        [m
[32m+[m[32m        # Validar que haya exactamente una respuesta correcta[m
[32m+[m[32m        correct_answers = [key for key, value in self.options.items() if value == self.correct_answer][m
[32m+[m[32m        if len(correct_answers) != 1:[m
[32m+[m[32m            raise ValidationError("There must be exactly one correct answer in the options.")[m
[32m+[m
[32m+[m[32m    def get_score(self):[m
[32m+[m[32m        """Calcula el puntaje según el nivel de dificultad."""[m
[32m+[m[32m        scores = {'easy': 1, 'medium': 2, 'hard': 3}[m
[32m+[m[32m        return scores.get(self.level, 0)[m
[32m+[m
     def __str__(self):[m
         return self.question_text[m
[1mdiff --git a/questions/permissions.py b/questions/permissions.py[m
[1mnew file mode 100644[m
[1mindex 0000000..480eb9e[m
[1m--- /dev/null[m
[1m+++ b/questions/permissions.py[m
[36m@@ -0,0 +1,14 @@[m
[32m+[m[32mfrom rest_framework.permissions import BasePermission[m
[32m+[m
[32m+[m[32mclass IsAdminOrReadOnly(BasePermission):[m
[32m+[m[32m    """[m
[32m+[m[32m    Permiso personalizado que solo permite modificar preguntas a los administradores,[m
[32m+[m[32m    pero permite verlas a cualquier usuario autenticado.[m
[32m+[m[32m    """[m
[32m+[m[32m    def has_permission(self, request, view):[m
[32m+[m[32m        # Los métodos de solo lectura (GET) están permitidos para cualquier usuario autenticado[m
[32m+[m[32m        if request.method in ['GET', 'HEAD', 'OPTIONS']:[m
[32m+[m[32m            return True[m
[32m+[m[41m        [m
[32m+[m[32m        # Los métodos de modificación (POST, PUT, DELETE) solo están permitidos para administradores[m
[32m+[m[32m        return request.user.is_staff or request.user.is_superuser[m
[1mdiff --git a/questions/serializers.py b/questions/serializers.py[m
[1mindex bd15f49..8a50cb6 100644[m
[1m--- a/questions/serializers.py[m
[1m+++ b/questions/serializers.py[m
[36m@@ -1,8 +1,18 @@[m
 # questions/serializers.py[m
 from rest_framework import serializers[m
 from .models import Question[m
[32m+[m
 class QuestionSerializer(serializers.ModelSerializer):[m
     class Meta:[m
         model = Question[m
[31m-        fields = ['id', 'question_text', 'level', 'options'][m
[31m-        # Excluimos 'correct_answer' para no mostrarlo en el API[m
[32m+[m[32m        fields = ['id', 'question_text', 'level', 'options', 'correct_answer'][m
[32m+[m[41m    [m
[32m+[m[32m    def to_representation(self, instance):[m
[32m+[m[32m        """[m
[32m+[m[32m        Excluye el campo 'correct_answer' si el usuario no es administrador.[m
[32m+[m[32m        """[m
[32m+[m[32m        representation = super().to_representation(instance)[m
[32m+[m[32m        user = self.context['request'].user[m
[32m+[m[32m        if not (user.is_staff or user.is_superuser):[m
[32m+[m[32m            representation.pop('correct_answer')[m
[32m+[m[32m        return representation[m
[1mdiff --git a/questions/templates/questions/base_generic.html b/questions/templates/questions/base_generic.html[m
[1mnew file mode 100644[m
[1mindex 0000000..84b9522[m
[1m--- /dev/null[m
[1m+++ b/questions/templates/questions/base_generic.html[m
[36m@@ -0,0 +1,23 @@[m
[32m+[m[32m<!-- base_generic.html -->[m
[32m+[m[32m<!DOCTYPE html>[m
[32m+[m[32m<html lang="en">[m
[32m+[m[32m<head>[m
[32m+[m[32m    <meta charset="UTF-8">[m
[32m+[m[32m    <meta name="viewport" content="width=device-width, initial-scale=1.0">[m
[32m+[m[32m    <title>{% block title %}My Application{% endblock %}</title>[m
[32m+[m[32m</head>[m
[32m+[m[32m<body>[m
[32m+[m[32m    <header>[m
[32m+[m[32m        <h1>Welcome to My Application</h1>[m
[32m+[m[32m    </header>[m
[32m+[m
[32m+[m[32m    <main>[m
[32m+[m[32m        {% block content %}[m
[32m+[m[32m        {% endblock %}[m
[32m+[m[32m    </main>[m
[32m+[m
[32m+[m[32m    <footer>[m
[32m+[m[32m        <p>&copy; 2024 My Application</p>[m
[32m+[m[32m    </footer>[m
[32m+[m[32m</body>[m
[32m+[m[32m</html>[m
[1mdiff --git a/questions/templates/questions/insert_questions.py b/questions/templates/questions/insert_questions.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e96b228[m
[1m--- /dev/null[m
[1m+++ b/questions/templates/questions/insert_questions.py[m
[36m@@ -0,0 +1,44 @@[m
[32m+[m[32mfrom django.core.management.base import BaseCommand[m
[32m+[m[32mfrom questions.models import Question[m
[32m+[m
[32m+[m[32mclass Command(BaseCommand):[m
[32m+[m[32m    help = 'Insertar preguntas predeterminadas en la base de datos'[m
[32m+[m
[32m+[m[32m    def handle(self, *args, **kwargs):[m
[32m+[m[32m        questions_data = [[m
[32m+[m[32m            {[m
[32m+[m[32m                'question_text': '¿Cuál es la principal función de recursos humanos?',[m
[32m+[m[32m                'level': 'easy',[m
[32m+[m[32m                'options': {'a': 'Contratar empleados', 'b': 'Gestionar finanzas', 'c': 'Controlar la producción'},[m
[32m+[m[32m                'correct_answer': 'a'[m
[32m+[m[32m            },[m
[32m+[m[32m            {[m
[32m+[m[32m                'question_text': '¿Qué significa la sigla "RSE" en el contexto laboral?',[m
[32m+[m[32m                'level': 'medium',[m
[32m+[m[32m                'options': {'a': 'Responsabilidad Social Empresarial', 'b': 'Recursos de Salud Empresarial', 'c': 'Regulación de Salarios Estables'},[m
[32m+[m[32m                'correct_answer': 'a'[m
[32m+[m[32m            },[m
[32m+[m[32m            {[m
[32m+[m[32m                'question_text': '¿Cómo se denomina el proceso de selección de empleados en la empresa?',[m
[32m+[m[32m                'level': 'medium',[m
[32m+[m[32m                'options': {'a': 'Onboarding', 'b': 'Reclutamiento', 'c': 'Evaluación de desempeño'},[m
[32m+[m[32m                'correct_answer': 'b'[m
[32m+[m[32m            },[m
[32m+[m[32m            {[m
[32m+[m[32m                'question_text': '¿Qué tipo de contrato es el más utilizado en un trabajo temporal?',[m
[32m+[m[32m                'level': 'hard',[m
[32m+[m[32m                'options': {'a': 'Contrato por obra y servicio', 'b': 'Contrato indefinido', 'c': 'Contrato de prácticas'},[m
[32m+[m[32m                'correct_answer': 'a'[m
[32m+[m[32m            },[m
[32m+[m[32m            {[m
[32m+[m[32m                'question_text': '¿Qué es un sindicato?',[m
[32m+[m[32m                'level': 'hard',[m
[32m+[m[32m                'options': {'a': 'Una entidad que defiende los derechos de los trabajadores', 'b': 'Una empresa encargada de contratar empleados', 'c': 'Una organización de empresarios'},[m
[32m+[m[32m                'correct_answer': 'a'[m
[32m+[m[32m            }[m
[32m+[m[32m        ][m
[32m+[m
[32m+[m[32m        for data in questions_data:[m
[32m+[m[32m            Question.objects.create(**data)[m
[32m+[m[41m        [m
[32m+[m[32m        self.stdout.write(self.style.SUCCESS('Preguntas insertadas exitosamente'))[m
[1mdiff --git a/questions/templates/questions/question_confirm_delete.html b/questions/templates/questions/question_confirm_delete.html[m
[1mnew file mode 100644[m
[1mindex 0000000..1024fe3[m
[1m--- /dev/null[m
[1m+++ b/questions/templates/questions/question_confirm_delete.html[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32m{% extends 'base_generic.html' %}[m
[32m+[m
[32m+[m[32m{% block content %}[m
[32m+[m[32m<h1>Eliminar Pregunta</h1>[m
[32m+[m[32m<p>¿Estás seguro de que deseas eliminar esta pregunta?</p>[m
[32m+[m[32m<form method="post"action="{% url 'question-delete' question.id %}">[m
[32m+[m[32m    {% csrf_token %}[m
[32m+[m[32m    <button type="submit" class="btn btn-danger">Eliminar</button>[m
[32m+[m[32m    <a href="{% url 'question-list' %}" class="btn btn-secondary">Cancelar</a>[m
[32m+[m[32m</form>[m
[32m+[m[32m{% endblock %}[m
\ No newline at end of file[m
[1mdiff --git a/questions/templates/questions/question_form.html b/questions/templates/questions/question_form.html[m
[1mnew file mode 100644[m
[1mindex 0000000..1e64b11[m
[1m--- /dev/null[m
[1m+++ b/questions/templates/questions/question_form.html[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32m<!-- questions/templates/questions/question_form.html -->[m
[32m+[m[32m<!DOCTYPE html>[m
[32m+[m[32m<html lang="en">[m
[32m+[m[32m<head>[m
[32m+[m[32m    <meta charset="UTF-8">[m
[32m+[m[32m    <title>Crear Pregunta</title>[m
[32m+[m[32m</head>[m
[32m+[m[32m<body>[m
[32m+[m[32m    <h1>Crear una nueva pregunta</h1>[m
[32m+[m[32m    <form method="post">[m
[32m+[m[32m        {% csrf_token %}[m
[32m+[m[32m        {{ form.as_p }}[m
[32m+[m[32m        <button type="submit">Crear Pregunta</button>[m
[32m+[m[32m    </form>[m
[32m+[m[32m    <a href="{% url 'question-list' %}">Regresar al listado</a>[m
[32m+[m[32m</body>[m
[32m+[m[32m</html>[m
[1mdiff --git a/questions/templates/questions/question_list.html b/questions/templates/questions/question_list.html[m
[1mnew file mode 100644[m
[1mindex 0000000..8cb0f34[m
[1m--- /dev/null[m
[1m+++ b/questions/templates/questions/question_list.html[m
[36m@@ -0,0 +1,33 @@[m
[32m+[m[32m<!DOCTYPE html>[m
[32m+[m[32m<html lang="es">[m
[32m+[m[32m<head>[m
[32m+[m[32m    <meta charset="UTF-8">[m
[32m+[m[32m    <meta name="viewport" content="width=device-width, initial-scale=1.0">[m
[32m+[m[32m    <title>TalaTrivia - Lista de Preguntas</title>[m
[32m+[m[32m    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.0/dist/tailwind.min.css" rel="stylesheet">[m
[32m+[m[32m</head>[m
[32m+[m[32m<body class="bg-gray-100">[m
[32m+[m[32m    <div class="container mx-auto p-6">[m
[32m+[m[32m        <h1 class="text-3xl font-bold text-center mb-6">Lista de Preguntas de TalaTrivia</h1>[m
[32m+[m
[32m+[m[32m        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">[m
[32m+[m[32m            {% for question in questions %}[m
[32m+[m[32m            <div class="bg-white rounded-lg shadow-md p-4">[m
[32m+[m[32m                <h2 class="text-2xl font-semibold mb-2">{{ question.question_text }}</h2>[m
[32m+[m[32m                {% comment %} <p><strong>Dificultad:</strong> {{ question.get_level_display }}</p> {% endcomment %}[m
[32m+[m[32m                <div class="mt-4">[m
[32m+[m[32m                    <h3 class="text-xl font-medium">Opciones:</h3>[m
[32m+[m[32m                    <ul class="list-disc pl-5">[m
[32m+[m[32m                        {% for key, option in question.options.items %}[m
[32m+[m[32m                            <li>{{ option }}</li>[m
[32m+[m[32m                        {% endfor %}[m
[32m+[m[32m                    </ul>[m
[32m+[m[32m                </div>[m
[32m+[m[32m                {% comment %} <p class="mt-2 text-green-600"><strong>Respuesta correcta:</strong> {{ question.correct_answer }}</p> {% endcomment %}[m
[32m+[m[32m                <p class="mt-2 text-gray-600"><strong>Puntaje:</strong> {{ question.get_score }}</p>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            {% endfor %}[m
[32m+[m[32m        </div>[m
[32m+[m[32m    </div>[m
[32m+[m[32m</body>[m
[32m+[m[32m</html>[m
[1mdiff --git a/questions/urls.py b/questions/urls.py[m
[1mindex e66afce..3460033 100644[m
[1m--- a/questions/urls.py[m
[1m+++ b/questions/urls.py[m
[36m@@ -1,11 +1,11 @@[m
[31m-# # questions/urls.py[m
[31m-# from django.urls import path[m
[31m-# from .views import QuestionListView, QuestionDetailView, QuestionCreateView, QuestionEditView, QuestionDeleteView[m
[32m+[m[32m# questions/urls.py[m
[32m+[m[32mfrom django.urls import path[m
[32m+[m[32mfrom .views import QuestionListView, QuestionDetailView, QuestionCreateView, QuestionEditView, QuestionDeleteView[m
 [m
[31m-# urlpatterns = [[m
[31m-#     path('questions/', QuestionListView.as_view(), name='question-list'),  # Listar todas las preguntas[m
[31m-#     path('questions/<int:pk>/', QuestionDetailView.as_view(), name='question-detail'),  # Detalle de una pregunta[m
[31m-#     path('questions/create/', QuestionCreateView.as_view(), name='question-create'),  # Crear una nueva pregunta[m
[31m-#     path('questions/<int:pk>/edit/', QuestionEditView.as_view(), name='question-edit'),  # Editar una pregunta[m
[31m-#     path('questions/<int:pk>/delete/', QuestionDeleteView.as_view(), name='question-delete'),  # Eliminar una pregunta[m
[31m-# ][m
[32m+[m[32murlpatterns = [[m
[32m+[m[32m    path('api/questions/', QuestionListView.as_view(), name='question-list'),[m
[32m+[m[32m    path('api/questions/<int:pk>/', QuestionDetailView.as_view(), name='question-detail'),[m
[32m+[m[32m    path('create/', QuestionCreateView.as_view(), name='question-create'),[m
[32m+[m[32m    path('api/questions/<int:pk>/edit/', QuestionEditView.as_view(), name='question-edit'),[m
[32m+[m[32m    path('api/questions/<int:pk>/delete/', QuestionDeleteView.as_view(), name='question-delete'),[m
[32m+[m[32m][m
[1mdiff --git a/questions/views.py b/questions/views.py[m
[1mindex 1b5b7bd..b5924eb 100644[m
[1m--- a/questions/views.py[m
[1m+++ b/questions/views.py[m
[36m@@ -1,11 +1,29 @@[m
[31m-from django.shortcuts import render[m
[31m-[m
[31m-# Create your views here.[m
[31m-# questions/views.py[m
[31m-from rest_framework import viewsets[m
[32m+[m[32mfrom rest_framework import generics[m
 from .models import Question[m
 from .serializers import QuestionSerializer[m
[32m+[m[32mfrom .permissions import IsAdminOrReadOnly  # Importar el permiso personalizado[m
[32m+[m
[32m+[m[32mclass QuestionListView(generics.ListAPIView):[m
[32m+[m[32m    queryset = Question.objects.all()[m
[32m+[m[32m    serializer_class = QuestionSerializer[m
[32m+[m[32m    permission_classes = [IsAdminOrReadOnly]  # Solo admins pueden modificar, todos pueden leer[m
[32m+[m
[32m+[m[32mclass QuestionCreateView(generics.CreateAPIView):[m
[32m+[m[32m    queryset = Question.objects.all()[m
[32m+[m[32m    serializer_class = QuestionSerializer[m
[32m+[m[32m    permission_classes = [IsAdminOrReadOnly]  # Solo admins pueden crear preguntas[m
[32m+[m
[32m+[m[32mclass QuestionDetailView(generics.RetrieveAPIView):[m
[32m+[m[32m    queryset = Question.objects.all()[m
[32m+[m[32m    serializer_class = QuestionSerializer[m
[32m+[m[32m    permission_classes = [IsAdminOrReadOnly]  # Solo admins pueden modificar o borrar[m
[32m+[m
[32m+[m[32mclass QuestionEditView(generics.UpdateAPIView):[m
[32m+[m[32m    queryset = Question.objects.all()[m
[32m+[m[32m    serializer_class = QuestionSerializer[m
[32m+[m[32m    permission_classes = [IsAdminOrReadOnly]  # Solo admins pueden editar[m
 [m
[31m-class QuestionViewSet(viewsets.ModelViewSet):[m
[32m+[m[32mclass QuestionDeleteView(generics.DestroyAPIView):[m
     queryset = Question.objects.all()[m
     serializer_class = QuestionSerializer[m
[32m+[m[32m    permission_classes = [IsAdminOrReadOnly]  # Solo admins pueden eliminar preguntas[m
[1mdiff --git a/tala_trivia/__pycache__/settings.cpython-313.pyc b/tala_trivia/__pycache__/settings.cpython-313.pyc[m
[1mindex fef0789..e016ed5 100644[m
Binary files a/tala_trivia/__pycache__/settings.cpython-313.pyc and b/tala_trivia/__pycache__/settings.cpython-313.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/urls.cpython-313.pyc b/tala_trivia/__pycache__/urls.cpython-313.pyc[m
[1mindex 2a6c85c..ac39e42 100644[m
Binary files a/tala_trivia/__pycache__/urls.cpython-313.pyc and b/tala_trivia/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/tala_trivia/settings.py b/tala_trivia/settings.py[m
[1mindex bafbbed..60dbc2f 100644[m
[1m--- a/tala_trivia/settings.py[m
[1m+++ b/tala_trivia/settings.py[m
[36m@@ -42,14 +42,22 @@[m [mINSTALLED_APPS = [[m
     'rest_framework_simplejwt',[m
     'rest_framework.authtoken',[m
     'django_extensions',[m
[32m+[m[32m    'corsheaders',[m
     'users',[m
     'questions',[m
     'trivias',[m
     'ranking',[m
 ][m
 [m
[32m+[m[32m# Desactivar CSRF para las vistas de la API[m
[32m+[m[32mCSRF_TRUSTED_ORIGINS = [[m
[32m+[m[32m    'http://localhost:8000',[m
[32m+[m[32m    'http://localhost:3000',  # Si tu frontend está en el puerto 3000[m
[32m+[m[32m][m
[32m+[m
 REST_FRAMEWORK = {[m
     'DEFAULT_AUTHENTICATION_CLASSES': [[m
[32m+[m[32m        # 'rest_framework.authentication.BasicAuthentication',[m
         'rest_framework_simplejwt.authentication.JWTAuthentication',  # Use JWT Authentication[m
     ],[m
     'DEFAULT_PERMISSION_CLASSES': [[m
[36m@@ -60,16 +68,20 @@[m [mREST_FRAMEWORK = {[m
         'rest_framework.renderers.BrowsableAPIRenderer',  # Enable Browsable API for interactive UI[m
     ],[m
 }[m
[32m+[m[32mfrom datetime import timedelta[m
 [m
 # JWT settings for token-based authentication[m
[32m+[m
 SIMPLE_JWT = {[m
[31m-    'ACCESS_TOKEN_LIFETIME': '1 hour',  # Adjust the token expiration time as needed[m
[31m-    'REFRESH_TOKEN_LIFETIME': '1 day',[m
[32m+[m[32m    'ACCESS_TOKEN_LIFETIME': timedelta(minutes=30),  # Token de acceso expira en 30 minutos[m
[32m+[m[32m    'REFRESH_TOKEN_LIFETIME': timedelta(days=1),     # Token de refresco expira en 1 día[m
     'ROTATE_REFRESH_TOKENS': False,[m
[31m-    'BLACKLIST_AFTER_ROTATION': False,[m
[32m+[m[32m    'BLACKLIST_AFTER_ROTATION': True,[m
[32m+[m[32m    'UPDATE_LAST_LOGIN': True,[m
 }[m
 [m
 MIDDLEWARE = [[m
[32m+[m[32m    'corsheaders.middleware.CorsMiddleware',  # Debe estar arriba[m
     'django.middleware.security.SecurityMiddleware',[m
     'django.contrib.sessions.middleware.SessionMiddleware',[m
     'django.middleware.common.CommonMiddleware',[m
[36m@@ -79,12 +91,33 @@[m [mMIDDLEWARE = [[m
     'django.middleware.clickjacking.XFrameOptionsMiddleware',[m
 ][m
 [m
[32m+[m[32mCORS_ALLOWED_ORIGINS = [[m
[32m+[m[32m    "http://localhost:3000",  # Si estás usando un frontend en React[m
[32m+[m[32m    "http://localhost:8000",  # Si necesitas que Django acepte solicitudes desde su propio dominio[m
[32m+[m[32m][m
[32m+[m
[32m+[m[32mCORS_ALLOW_ALL_ORIGINS = True[m
[32m+[m[32mCORS_ALLOW_CREDENTIALS = True[m
[32m+[m[32mCORS_ALLOW_METHODS = [[m
[32m+[m[32m    'GET',[m
[32m+[m[32m    'POST',[m
[32m+[m[32m    'PUT',[m
[32m+[m[32m    'PATCH',[m
[32m+[m[32m    'DELETE',[m
[32m+[m[32m    'OPTIONS'[m
[32m+[m[32m][m
[32m+[m[32mLOGIN_URL = '/users/login/'  # URL definida en tu aplicación users[m
[32m+[m
[32m+[m
[32m+[m
 ROOT_URLCONF = 'tala_trivia.urls'[m
 [m
 TEMPLATES = [[m
     {[m
         'BACKEND': 'django.template.backends.django.DjangoTemplates',[m
[31m-        'DIRS': [],[m
[32m+[m[32m        'DIRS': [[m
[32m+[m[32m            BASE_DIR / 'templates',  # Directorio global de plantillas[m
[32m+[m[32m        ],[m
         'APP_DIRS': True,[m
         'OPTIONS': {[m
             'context_processors': [[m
[1mdiff --git a/tala_trivia/urls.py b/tala_trivia/urls.py[m
[1mindex 2c811b6..4ce59ab 100644[m
[1m--- a/tala_trivia/urls.py[m
[1m+++ b/tala_trivia/urls.py[m
[36m@@ -1,39 +1,49 @@[m
[31m-# URL Configuration[m
[32m+[m[32m# tala_trivia/urls.py[m
 from django.contrib import admin[m
 from django.urls import path, include[m
 from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView[m
[32m+[m[32mfrom rest_framework import permissions[m
 from drf_yasg.views import get_schema_view # type: ignore[m
 from drf_yasg import openapi # type: ignore[m
[31m-from rest_framework import permissions[m
[31m-[m
[31m-from tala_trivia.views import ApiRootView[m
 [m
[31m-# Swagger view setup[m
[32m+[m[32m# Definir la vista del esquema Swagger[m
 schema_view = get_schema_view([m
[31m-    openapi.Info([m
[31m-        title="SimuladorERP API",[m
[31m-        default_version='v1',[m
[31m-        description="Documentación de las rutas de la API",[m
[31m-        terms_of_service="https://www.google.com/policies/terms/",[m
[31m-        contact=openapi.Contact(email="contact@simuladorerp.local"),[m
[31m-        license=openapi.License(name="BSD License"),[m
[31m-    ),[m
[31m-    public=True,[m
[31m-    permission_classes=(permissions.AllowAny,),[m
[32m+[m[32m   openapi.Info([m
[32m+[m[32m      title="Tala Trivia API",[m
[32m+[m[32m      default_version='v1',[m
[32m+[m[32m      description="Documentación de la API de Tala Trivia",[m
[32m+[m[32m      terms_of_service="https://www.google.com/policies/terms/",[m
[32m+[m[32m      contact=openapi.Contact(email="contact@tala_trivia.local"),[m
[32m+[m[32m      license=openapi.License(name="MIT License"),[m
[32m+[m[32m   ),[m
[32m+[m[32m   public=True,[m
[32m+[m[32m   permission_classes=(permissions.AllowAny,),[m
 )[m
 [m
 urlpatterns = [[m
     path('admin/', admin.site.urls),[m
     path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),[m
     path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),[m
[31m-    path('api/', include('users.urls')),      # Rutas de usuarios[m
[31m-    # path('api/', include('questions.urls')),  # Rutas de preguntas[m
[31m-    # path('api/', include('trivias.urls')),    # Rutas de trivias[m
[31m-    # path('api/', include('ranking.urls')),    # Rutas de rankings[m
[32m+[m[32m    path('api/users/', include('users.urls')),  # Incluir las rutas de usuarios[m
[32m+[m[32m    path('questions/', include('questions.urls')),  # Incluir las rutas de preguntas[m
     [m
[31m-    # Ruta para la documentación de la API (Swagger UI)[m
[32m+[m[32m    # Agregar la ruta de Swagger para la documentación interactiva[m
     path('swagger/', schema_view.with_ui('swagger', cache_timeout=0), name='schema-swagger-ui'),[m
     [m
[31m-    # Ruta para el API Root sin autenticación[m
[31m-    path('api/', ApiRootView.as_view(), name='api-root'),[m
[31m-][m
\ No newline at end of file[m
[32m+[m[32m    # Si prefieres la documentación en formato ReDoc, también puedes agregarla:[m
[32m+[m[32m    path('redoc/', schema_view.with_ui('redoc', cache_timeout=0), name='schema-redoc'),[m
[32m+[m[32m][m
[32m+[m
[32m+[m[32m# # tala_trivia/urls.py (o el archivo `urls.py` principal de tu proyecto)[m
[32m+[m[32m# from django.contrib import admin[m
[32m+[m[32m# from django.urls import path, include[m
[32m+[m[32m# from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView[m
[32m+[m
[32m+[m[32m# urlpatterns = [[m
[32m+[m[32m#     path('admin/', admin.site.urls),[m
[32m+[m[32m#     path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),[m
[32m+[m[32m#     path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),[m
[32m+[m[32m#     path('api/users/', include('users.urls')),  # Asegúrate de incluir esta línea[m
[32m+[m[32m#     path('questions/', include('questions.urls')),  # Asegúrate de incluir esta línea[m
[32m+[m[32m# ][m
[41m+[m
[1mdiff --git a/users/__pycache__/models.cpython-313.pyc b/users/__pycache__/models.cpython-313.pyc[m
[1mindex 1d64c98..e28d5a8 100644[m
Binary files a/users/__pycache__/models.cpython-313.pyc and b/users/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/users/__pycache__/urls.cpython-313.pyc b/users/__pycache__/urls.cpython-313.pyc[m
[1mindex a0401b5..e3f204f 100644[m
Binary files a/users/__pycache__/urls.cpython-313.pyc and b/users/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/users/__pycache__/views.cpython-313.pyc b/users/__pycache__/views.cpython-313.pyc[m
[1mindex af8ceb2..d1b7f39 100644[m
Binary files a/users/__pycache__/views.cpython-313.pyc and b/users/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/users/migrations/0002_customuser_role.py b/users/migrations/0002_customuser_role.py[m
[1mnew file mode 100644[m
[1mindex 0000000..fe0ab3a[m
[1m--- /dev/null[m
[1m+++ b/users/migrations/0002_customuser_role.py[m
[36m@@ -0,0 +1,18 @@[m
[32m+[m[32m# Generated by Django 5.1.3 on 2024-11-24 07:40[m
[32m+[m
[32m+[m[32mfrom django.db import migrations, models[m
[32m+[m
[32m+[m
[32m+[m[32mclass Migration(migrations.Migration):[m
[32m+[m
[32m+[m[32m    dependencies = [[m
[32m+[m[32m        ('users', '0001_initial'),[m
[32m+[m[32m    ][m
[32m+[m
[32m+[m[32m    operations = [[m
[32m+[m[32m        migrations.AddField([m
[32m+[m[32m            model_name='customuser',[m
[32m+[m[32m            name='role',[m
[32m+[m[32m            field=models.CharField(choices=[('admin', 'Admin'), ('jugador', 'Jugador')], default='jugador', max_length=10),[m
[32m+[m[32m        ),[m
[32m+[m[32m    ][m
[1mdiff --git a/users/migrations/__pycache__/0002_customuser_role.cpython-313.pyc b/users/migrations/__pycache__/0002_customuser_role.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..e7cece2[m
Binary files /dev/null and b/users/migrations/__pycache__/0002_customuser_role.cpython-313.pyc differ
[1mdiff --git a/users/models.py b/users/models.py[m
[1mindex a356551..9467e33 100644[m
[1m--- a/users/models.py[m
[1m+++ b/users/models.py[m
[36m@@ -20,4 +20,26 @@[m [mclass CustomUser(AbstractUser):[m
     def assign_role(self, role_name):[m
         group, created = Group.objects.get_or_create(name=role_name)[m
         self.groups.add(group)[m
[31m-        self.save()[m
\ No newline at end of file[m
[32m+[m[32m        self.save()[m
[32m+[m[32m    ROLE_CHOICES = ([m
[32m+[m[32m        ('admin', 'Admin'),[m
[32m+[m[32m        ('jugador', 'Jugador'),[m
[32m+[m[32m    )[m
[32m+[m[32m    role = models.CharField(max_length=10, choices=ROLE_CHOICES, default='jugador')[m
[32m+[m[41m    [m
[32m+[m[32m    def assign_role(self, role_name):[m
[32m+[m[32m        """Asigna un rol (grupo) al usuario."""[m
[32m+[m[32m        # Obtener o crear el grupo basado en el nombre del rol[m
[32m+[m[32m        group, created = Group.objects.get_or_create(name=role_name)[m
[32m+[m[32m        # Asignar el grupo al usuario[m
[32m+[m[32m        self.groups.add(group)[m
[32m+[m[32m        self.role = role_name  # Sincroniza el campo role[m
[32m+[m[32m        self.save()[m
[32m+[m
[32m+[m[32m    def is_admin(self):[m
[32m+[m[32m        """Verifica si el usuario tiene el rol de admin."""[m
[32m+[m[32m        return self.role == 'admin'[m
[32m+[m
[32m+[m[32m    def is_jugador(self):[m
[32m+[m[32m        """Verifica si el usuario tiene el rol de jugador."""[m
[32m+[m[32m        return self.role == 'jugador'[m
\ No newline at end of file[m

[33mcommit 9fc14f7039f3e19a5303ae002afd49f682c0432b[m
Merge: 25afbf0 5358ed0
Author: Hector Cano <123791914+HectorCano1411@users.noreply.github.com>
Date:   Sun Nov 24 03:50:37 2024 -0300

    Merge pull request #1 from HectorCano1411/devHC2
    
    Cracion de CRUD users

[33mcommit 5358ed01735487e6cad395c183ac90cf0be6c5c8[m
Author: Hector Cano <hectorcanolealestudios@gmail.com>
Date:   Sun Nov 24 03:48:08 2024 -0300

    Cracion de CRUD users

[1mdiff --git a/questions/__pycache__/__init__.cpython-310.pyc b/questions/__pycache__/__init__.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex 7c0a562..0000000[m
Binary files a/questions/__pycache__/__init__.cpython-310.pyc and /dev/null differ
[1mdiff --git a/questions/__pycache__/admin.cpython-310.pyc b/questions/__pycache__/admin.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex 410f24f..0000000[m
Binary files a/questions/__pycache__/admin.cpython-310.pyc and /dev/null differ
[1mdiff --git a/questions/__pycache__/admin.cpython-311.pyc b/questions/__pycache__/admin.cpython-311.pyc[m
[1mindex 3f693f7..a250e1b 100644[m
Binary files a/questions/__pycache__/admin.cpython-311.pyc and b/questions/__pycache__/admin.cpython-311.pyc differ
[1mdiff --git a/questions/__pycache__/apps.cpython-310.pyc b/questions/__pycache__/apps.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex 0fbdba3..0000000[m
Binary files a/questions/__pycache__/apps.cpython-310.pyc and /dev/null differ
[1mdiff --git a/questions/__pycache__/models.cpython-310.pyc b/questions/__pycache__/models.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex b51aa51..0000000[m
Binary files a/questions/__pycache__/models.cpython-310.pyc and /dev/null differ
[1mdiff --git a/questions/__pycache__/models.cpython-311.pyc b/questions/__pycache__/models.cpython-311.pyc[m
[1mindex aca79a8..655d712 100644[m
Binary files a/questions/__pycache__/models.cpython-311.pyc and b/questions/__pycache__/models.cpython-311.pyc differ
[1mdiff --git a/questions/__pycache__/models.cpython-313.pyc b/questions/__pycache__/models.cpython-313.pyc[m
[1mindex 13fba98..c30b062 100644[m
Binary files a/questions/__pycache__/models.cpython-313.pyc and b/questions/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/questions/__pycache__/serializers.cpython-310.pyc b/questions/__pycache__/serializers.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex 6e0a776..0000000[m
Binary files a/questions/__pycache__/serializers.cpython-310.pyc and /dev/null differ
[1mdiff --git a/questions/__pycache__/serializers.cpython-311.pyc b/questions/__pycache__/serializers.cpython-311.pyc[m
[1mdeleted file mode 100644[m
[1mindex f6e7f4f..0000000[m
Binary files a/questions/__pycache__/serializers.cpython-311.pyc and /dev/null differ
[1mdiff --git a/questions/__pycache__/serializers.cpython-313.pyc b/questions/__pycache__/serializers.cpython-313.pyc[m
[1mindex 97691ba..1398678 100644[m
Binary files a/questions/__pycache__/serializers.cpython-313.pyc and b/questions/__pycache__/serializers.cpython-313.pyc differ
[1mdiff --git a/questions/__pycache__/urls.cpython-313.pyc b/questions/__pycache__/urls.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..8897576[m
Binary files /dev/null and b/questions/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/questions/__pycache__/views.cpython-310.pyc b/questions/__pycache__/views.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex bbdfde2..0000000[m
Binary files a/questions/__pycache__/views.cpython-310.pyc and /dev/null differ
[1mdiff --git a/questions/__pycache__/views.cpython-311.pyc b/questions/__pycache__/views.cpython-311.pyc[m
[1mdeleted file mode 100644[m
[1mindex 57b20da..0000000[m
Binary files a/questions/__pycache__/views.cpython-311.pyc and /dev/null differ
[1mdiff --git a/questions/__pycache__/views.cpython-313.pyc b/questions/__pycache__/views.cpython-313.pyc[m
[1mindex e4245ca..fcd66ed 100644[m
Binary files a/questions/__pycache__/views.cpython-313.pyc and b/questions/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/questions/migrations/0001_initial.py b/questions/migrations/0001_initial.py[m
[1mindex 2f24472..94375bd 100644[m
[1m--- a/questions/migrations/0001_initial.py[m
[1m+++ b/questions/migrations/0001_initial.py[m
[36m@@ -1,4 +1,4 @@[m
[31m-# Generated by Django 5.1.3 on 2024-11-23 08:00[m
[32m+[m[32m# Generated by Django 5.1.3 on 2024-11-24 01:16[m
 [m
 from django.db import migrations, models[m
 [m
[1mdiff --git a/questions/migrations/__pycache__/0001_initial.cpython-313.pyc b/questions/migrations/__pycache__/0001_initial.cpython-313.pyc[m
[1mindex 7353d4a..7e68c9e 100644[m
Binary files a/questions/migrations/__pycache__/0001_initial.cpython-313.pyc and b/questions/migrations/__pycache__/0001_initial.cpython-313.pyc differ
[1mdiff --git a/questions/migrations/__pycache__/__init__.cpython-313.pyc b/questions/migrations/__pycache__/__init__.cpython-313.pyc[m
[1mindex ba331a1..4f0e676 100644[m
Binary files a/questions/migrations/__pycache__/__init__.cpython-313.pyc and b/questions/migrations/__pycache__/__init__.cpython-313.pyc differ
[1mdiff --git a/questions/models.py b/questions/models.py[m
[1mindex 4b588d0..7610f57 100644[m
[1m--- a/questions/models.py[m
[1m+++ b/questions/models.py[m
[36m@@ -1,8 +1,5 @@[m
[31m-from django.db import models[m
[31m-[m
 # Create your models here.[m
 # questions/models.py[m
[31m-[m
 from django.db import models[m
 [m
 class Question(models.Model):[m
[1mdiff --git a/questions/serializers.py b/questions/serializers.py[m
[1mindex 40dd3a0..bd15f49 100644[m
[1m--- a/questions/serializers.py[m
[1m+++ b/questions/serializers.py[m
[36m@@ -1,8 +1,8 @@[m
 # questions/serializers.py[m
 from rest_framework import serializers[m
 from .models import Question[m
[31m-[m
 class QuestionSerializer(serializers.ModelSerializer):[m
     class Meta:[m
         model = Question[m
[31m-        fields = ['id', 'question_text', 'level', 'options', 'correct_answer'][m
[32m+[m[32m        fields = ['id', 'question_text', 'level', 'options'][m
[32m+[m[32m        # Excluimos 'correct_answer' para no mostrarlo en el API[m
[1mdiff --git a/questions/urls.py b/questions/urls.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e66afce[m
[1m--- /dev/null[m
[1m+++ b/questions/urls.py[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32m# # questions/urls.py[m
[32m+[m[32m# from django.urls import path[m
[32m+[m[32m# from .views import QuestionListView, QuestionDetailView, QuestionCreateView, QuestionEditView, QuestionDeleteView[m
[32m+[m
[32m+[m[32m# urlpatterns = [[m
[32m+[m[32m#     path('questions/', QuestionListView.as_view(), name='question-list'),  # Listar todas las preguntas[m
[32m+[m[32m#     path('questions/<int:pk>/', QuestionDetailView.as_view(), name='question-detail'),  # Detalle de una pregunta[m
[32m+[m[32m#     path('questions/create/', QuestionCreateView.as_view(), name='question-create'),  # Crear una nueva pregunta[m
[32m+[m[32m#     path('questions/<int:pk>/edit/', QuestionEditView.as_view(), name='question-edit'),  # Editar una pregunta[m
[32m+[m[32m#     path('questions/<int:pk>/delete/', QuestionDeleteView.as_view(), name='question-delete'),  # Eliminar una pregunta[m
[32m+[m[32m# ][m
[1mdiff --git a/ranking/__pycache__/__init__.cpython-310.pyc b/ranking/__pycache__/__init__.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex 94711ed..0000000[m
Binary files a/ranking/__pycache__/__init__.cpython-310.pyc and /dev/null differ
[1mdiff --git a/ranking/__pycache__/admin.cpython-310.pyc b/ranking/__pycache__/admin.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex f137ed6..0000000[m
Binary files a/ranking/__pycache__/admin.cpython-310.pyc and /dev/null differ
[1mdiff --git a/ranking/__pycache__/admin.cpython-311.pyc b/ranking/__pycache__/admin.cpython-311.pyc[m
[1mindex 756952d..a11f0c2 100644[m
Binary files a/ranking/__pycache__/admin.cpython-311.pyc and b/ranking/__pycache__/admin.cpython-311.pyc differ
[1mdiff --git a/ranking/__pycache__/apps.cpython-310.pyc b/ranking/__pycache__/apps.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex 3048390..0000000[m
Binary files a/ranking/__pycache__/apps.cpython-310.pyc and /dev/null differ
[1mdiff --git a/ranking/__pycache__/models.cpython-310.pyc b/ranking/__pycache__/models.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex c82f3b4..0000000[m
Binary files a/ranking/__pycache__/models.cpython-310.pyc and /dev/null differ
[1mdiff --git a/ranking/__pycache__/models.cpython-311.pyc b/ranking/__pycache__/models.cpython-311.pyc[m
[1mindex c6eba83..617d815 100644[m
Binary files a/ranking/__pycache__/models.cpython-311.pyc and b/ranking/__pycache__/models.cpython-311.pyc differ
[1mdiff --git a/ranking/__pycache__/models.cpython-313.pyc b/ranking/__pycache__/models.cpython-313.pyc[m
[1mindex a811f59..965ec38 100644[m
Binary files a/ranking/__pycache__/models.cpython-313.pyc and b/ranking/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/ranking/__pycache__/serializers.cpython-310.pyc b/ranking/__pycache__/serializers.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex b426487..0000000[m
Binary files a/ranking/__pycache__/serializers.cpython-310.pyc and /dev/null differ
[1mdiff --git a/ranking/__pycache__/serializers.cpython-311.pyc b/ranking/__pycache__/serializers.cpython-311.pyc[m
[1mdeleted file mode 100644[m
[1mindex ffc16ed..0000000[m
Binary files a/ranking/__pycache__/serializers.cpython-311.pyc and /dev/null differ
[1mdiff --git a/ranking/__pycache__/urls.cpython-313.pyc b/ranking/__pycache__/urls.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..227a248[m
Binary files /dev/null and b/ranking/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/ranking/__pycache__/views.cpython-310.pyc b/ranking/__pycache__/views.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex 8e01c89..0000000[m
Binary files a/ranking/__pycache__/views.cpython-310.pyc and /dev/null differ
[1mdiff --git a/ranking/__pycache__/views.cpython-311.pyc b/ranking/__pycache__/views.cpython-311.pyc[m
[1mdeleted file mode 100644[m
[1mindex 9d55f9b..0000000[m
Binary files a/ranking/__pycache__/views.cpython-311.pyc and /dev/null differ
[1mdiff --git a/ranking/__pycache__/views.cpython-313.pyc b/ranking/__pycache__/views.cpython-313.pyc[m
[1mindex 4bd0f61..87ebf37 100644[m
Binary files a/ranking/__pycache__/views.cpython-313.pyc and b/ranking/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/ranking/migrations/0001_initial.py b/ranking/migrations/0001_initial.py[m
[1mindex 5f7b839..7d5be02 100644[m
[1m--- a/ranking/migrations/0001_initial.py[m
[1m+++ b/ranking/migrations/0001_initial.py[m
[36m@@ -1,4 +1,4 @@[m
[31m-# Generated by Django 5.1.3 on 2024-11-23 08:01[m
[32m+[m[32m# Generated by Django 5.1.3 on 2024-11-24 01:17[m
 [m
 import django.db.models.deletion[m
 from django.conf import settings[m
[36m@@ -10,7 +10,7 @@[m [mclass Migration(migrations.Migration):[m
     initial = True[m
 [m
     dependencies = [[m
[31m-        ('trivias', '__first__'),[m
[32m+[m[32m        ('trivias', '0001_initial'),[m
         migrations.swappable_dependency(settings.AUTH_USER_MODEL),[m
     ][m
 [m
[1mdiff --git a/ranking/migrations/__pycache__/0001_initial.cpython-313.pyc b/ranking/migrations/__pycache__/0001_initial.cpython-313.pyc[m
[1mindex 5492c3d..2a8f4fa 100644[m
Binary files a/ranking/migrations/__pycache__/0001_initial.cpython-313.pyc and b/ranking/migrations/__pycache__/0001_initial.cpython-313.pyc differ
[1mdiff --git a/ranking/migrations/__pycache__/__init__.cpython-313.pyc b/ranking/migrations/__pycache__/__init__.cpython-313.pyc[m
[1mindex 6d69152..18caf21 100644[m
Binary files a/ranking/migrations/__pycache__/__init__.cpython-313.pyc and b/ranking/migrations/__pycache__/__init__.cpython-313.pyc differ
[1mdiff --git a/ranking/models.py b/ranking/models.py[m
[1mindex 5b7b34d..5799597 100644[m
[1m--- a/ranking/models.py[m
[1m+++ b/ranking/models.py[m
[36m@@ -1,5 +1,3 @@[m
[31m-from django.db import models[m
[31m-[m
 # Create your models here.[m
 # ranking/models.py[m
 [m
[1mdiff --git a/ranking/urls.py b/ranking/urls.py[m
[1mnew file mode 100644[m
[1mindex 0000000..c885963[m
[1m--- /dev/null[m
[1m+++ b/ranking/urls.py[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32m# # ranking/urls.py[m
[32m+[m[32m# from django.urls import path[m
[32m+[m[32m# from .views import RankingListView, RankingDetailView, RankingCreateView, RankingEditView, RankingDeleteView[m
[32m+[m
[32m+[m[32m# urlpatterns = [[m
[32m+[m[32m#     path('ranking/', RankingListView.as_view(), name='ranking-list'),  # Listar todos los rankings[m
[32m+[m[32m#     path('ranking/<int:pk>/', RankingDetailView.as_view(), name='ranking-detail'),  # Detalle de un ranking[m
[32m+[m[32m#     path('ranking/create/', RankingCreateView.as_view(), name='ranking-create'),  # Crear un nuevo ranking[m
[32m+[m[32m#     path('ranking/<int:pk>/edit/', RankingEditView.as_view(), name='ranking-edit'),  # Editar un ranking[m
[32m+[m[32m#     path('ranking/<int:pk>/delete/', RankingDeleteView.as_view(), name='ranking-delete'),  # Eliminar un ranking[m
[32m+[m[32m# ][m
[1mdiff --git a/ranking/views.py b/ranking/views.py[m
[1mindex 802bb10..5cfe834 100644[m
[1m--- a/ranking/views.py[m
[1m+++ b/ranking/views.py[m
[36m@@ -1,11 +1,17 @@[m
[31m-from django.shortcuts import render[m
 [m
[31m-# Create your views here.[m
[31m-# ranking/views.py[m
 from rest_framework import viewsets[m
[31m-from .models import Ranking[m
 from .serializers import RankingSerializer[m
[32m+[m[32mfrom rest_framework.decorators import action[m
[32m+[m[32mfrom rest_framework.response import Response[m
[32m+[m[32mfrom .models import Ranking[m
 [m
 class RankingViewSet(viewsets.ModelViewSet):[m
     queryset = Ranking.objects.all()[m
     serializer_class = RankingSerializer[m
[32m+[m
[32m+[m[32m    @action(detail=True, methods=['get'])[m
[32m+[m[32m    def get_ranking(self, request, pk=None):[m
[32m+[m[32m        trivia = self.get_object()[m
[32m+[m[32m        rankings = Ranking.objects.filter(trivia=trivia).order_by('-score')[m
[32m+[m[32m        serializer = RankingSerializer(rankings, many=True)[m
[32m+[m[32m        return Response(serializer.data)[m
[1mdiff --git a/requirements.txt b/requirements.txt[m
[1mindex d9ad5c4..be8b737 100644[m
[1m--- a/requirements.txt[m
[1m+++ b/requirements.txt[m
[36m@@ -1,9 +1,16 @@[m
 asgiref==3.8.1[m
 Django==5.1.3[m
 django-cors-headers==4.6.0[m
[32m+[m[32mdjango-extensions==3.2.3[m
 djangorestframework==3.15.2[m
 djangorestframework-simplejwt==5.3.1[m
[32m+[m[32mdrf-yasg==1.21.8[m
[32m+[m[32minflection==0.5.1[m
[32m+[m[32mpackaging==24.2[m
 psycopg2-binary==2.9.10[m
 PyJWT==2.10.0[m
[32m+[m[32mpytz==2024.2[m
[32m+[m[32mPyYAML==6.0.2[m
 sqlparse==0.5.2[m
 tzdata==2024.2[m
[32m+[m[32muritemplate==4.1.1[m
[1mdiff --git a/tala_trivia/__pycache__/__init__.cpython-310.pyc b/tala_trivia/__pycache__/__init__.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex c13b404..0000000[m
Binary files a/tala_trivia/__pycache__/__init__.cpython-310.pyc and /dev/null differ
[1mdiff --git a/tala_trivia/__pycache__/settings.cpython-310.pyc b/tala_trivia/__pycache__/settings.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex bc5dc95..0000000[m
Binary files a/tala_trivia/__pycache__/settings.cpython-310.pyc and /dev/null differ
[1mdiff --git a/tala_trivia/__pycache__/settings.cpython-311.pyc b/tala_trivia/__pycache__/settings.cpython-311.pyc[m
[1mindex 08f413b..55a1eca 100644[m
Binary files a/tala_trivia/__pycache__/settings.cpython-311.pyc and b/tala_trivia/__pycache__/settings.cpython-311.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/settings.cpython-313.pyc b/tala_trivia/__pycache__/settings.cpython-313.pyc[m
[1mindex 4a1ab3e..fef0789 100644[m
Binary files a/tala_trivia/__pycache__/settings.cpython-313.pyc and b/tala_trivia/__pycache__/settings.cpython-313.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/urls.cpython-310.pyc b/tala_trivia/__pycache__/urls.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex 7979240..0000000[m
Binary files a/tala_trivia/__pycache__/urls.cpython-310.pyc and /dev/null differ
[1mdiff --git a/tala_trivia/__pycache__/urls.cpython-311.pyc b/tala_trivia/__pycache__/urls.cpython-311.pyc[m
[1mdeleted file mode 100644[m
[1mindex 1278e3d..0000000[m
Binary files a/tala_trivia/__pycache__/urls.cpython-311.pyc and /dev/null differ
[1mdiff --git a/tala_trivia/__pycache__/urls.cpython-313.pyc b/tala_trivia/__pycache__/urls.cpython-313.pyc[m
[1mindex b4a5afa..2a6c85c 100644[m
Binary files a/tala_trivia/__pycache__/urls.cpython-313.pyc and b/tala_trivia/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/views.cpython-313.pyc b/tala_trivia/__pycache__/views.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..1f22f7a[m
Binary files /dev/null and b/tala_trivia/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/wsgi.cpython-310.pyc b/tala_trivia/__pycache__/wsgi.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex 5159c22..0000000[m
Binary files a/tala_trivia/__pycache__/wsgi.cpython-310.pyc and /dev/null differ
[1mdiff --git a/tala_trivia/settings.py b/tala_trivia/settings.py[m
[1mindex c37147f..bafbbed 100644[m
[1m--- a/tala_trivia/settings.py[m
[1m+++ b/tala_trivia/settings.py[m
[36m@@ -38,20 +38,37 @@[m [mINSTALLED_APPS = [[m
     'django.contrib.messages',[m
     'django.contrib.staticfiles',[m
     'rest_framework',[m
[32m+[m[32m    'drf_yasg',[m
[32m+[m[32m    'rest_framework_simplejwt',[m
     'rest_framework.authtoken',[m
[32m+[m[32m    'django_extensions',[m
     'users',[m
     'questions',[m
     'trivias',[m
     'ranking',[m
 ][m
[32m+[m
 REST_FRAMEWORK = {[m
     'DEFAULT_AUTHENTICATION_CLASSES': [[m
[31m-        'rest_framework.authentication.TokenAuthentication',[m
[32m+[m[32m        'rest_framework_simplejwt.authentication.JWTAuthentication',  # Use JWT Authentication[m
     ],[m
     'DEFAULT_PERMISSION_CLASSES': [[m
[31m-        'rest_framework.permissions.IsAuthenticated',[m
[32m+[m[32m        'rest_framework.permissions.IsAuthenticated',  # Default permissions to authenticated users[m
[32m+[m[32m    ],[m
[32m+[m[32m    'DEFAULT_RENDERER_CLASSES': [[m
[32m+[m[32m        'rest_framework.renderers.JSONRenderer',  # Default renderer[m
[32m+[m[32m        'rest_framework.renderers.BrowsableAPIRenderer',  # Enable Browsable API for interactive UI[m
     ],[m
 }[m
[32m+[m
[32m+[m[32m# JWT settings for token-based authentication[m
[32m+[m[32mSIMPLE_JWT = {[m
[32m+[m[32m    'ACCESS_TOKEN_LIFETIME': '1 hour',  # Adjust the token expiration time as needed[m
[32m+[m[32m    'REFRESH_TOKEN_LIFETIME': '1 day',[m
[32m+[m[32m    'ROTATE_REFRESH_TOKENS': False,[m
[32m+[m[32m    'BLACKLIST_AFTER_ROTATION': False,[m
[32m+[m[32m}[m
[32m+[m
 MIDDLEWARE = [[m
     'django.middleware.security.SecurityMiddleware',[m
     'django.contrib.sessions.middleware.SessionMiddleware',[m
[36m@@ -140,4 +157,9 @@[m [mSTATIC_URL = 'static/'[m
 # https://docs.djangoproject.com/en/5.1/ref/settings/#default-auto-field[m
 [m
 DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'[m
[31m-    [m
\ No newline at end of file[m
[32m+[m[41m    [m
[32m+[m[32m# Custom settings for Swagger documentation and API root[m
[32m+[m[32mSWAGGER_SETTINGS = {[m
[32m+[m[32m    'USE_SESSION_AUTH': False,[m
[32m+[m[32m    'VALIDATOR_URL': None,[m
[32m+[m[32m}[m
[1mdiff --git a/tala_trivia/urls.py b/tala_trivia/urls.py[m
[1mindex e6fa6b1..2c811b6 100644[m
[1m--- a/tala_trivia/urls.py[m
[1m+++ b/tala_trivia/urls.py[m
[36m@@ -1,21 +1,39 @@[m
[31m-[m
[31m-[m
[31m-# tala_trivia/urls.py[m
[32m+[m[32m# URL Configuration[m
 from django.contrib import admin[m
 from django.urls import path, include[m
[31m-from rest_framework.routers import DefaultRouter[m
[31m-from users.views import UserViewSet[m
[31m-from questions.views import QuestionViewSet[m
[31m-from trivias.views import TriviaViewSet[m
[31m-from ranking.views import RankingViewSet[m
[32m+[m[32mfrom rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView[m
[32m+[m[32mfrom drf_yasg.views import get_schema_view # type: ignore[m
[32m+[m[32mfrom drf_yasg import openapi # type: ignore[m
[32m+[m[32mfrom rest_framework import permissions[m
[32m+[m
[32m+[m[32mfrom tala_trivia.views import ApiRootView[m
 [m
[31m-router = DefaultRouter()[m
[31m-router.register(r'users', UserViewSet)[m
[31m-router.register(r'questions', QuestionViewSet)[m
[31m-router.register(r'trivias', TriviaViewSet)[m
[31m-router.register(r'ranking', RankingViewSet)[m
[32m+[m[32m# Swagger view setup[m
[32m+[m[32mschema_view = get_schema_view([m
[32m+[m[32m    openapi.Info([m
[32m+[m[32m        title="SimuladorERP API",[m
[32m+[m[32m        default_version='v1',[m
[32m+[m[32m        description="Documentación de las rutas de la API",[m
[32m+[m[32m        terms_of_service="https://www.google.com/policies/terms/",[m
[32m+[m[32m        contact=openapi.Contact(email="contact@simuladorerp.local"),[m
[32m+[m[32m        license=openapi.License(name="BSD License"),[m
[32m+[m[32m    ),[m
[32m+[m[32m    public=True,[m
[32m+[m[32m    permission_classes=(permissions.AllowAny,),[m
[32m+[m[32m)[m
 [m
 urlpatterns = [[m
     path('admin/', admin.site.urls),[m
[31m-    path('api/', include(router.urls)),[m
[31m-][m
[32m+[m[32m    path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),[m
[32m+[m[32m    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),[m
[32m+[m[32m    path('api/', include('users.urls')),      # Rutas de usuarios[m
[32m+[m[32m    # path('api/', include('questions.urls')),  # Rutas de preguntas[m
[32m+[m[32m    # path('api/', include('trivias.urls')),    # Rutas de trivias[m
[32m+[m[32m    # path('api/', include('ranking.urls')),    # Rutas de rankings[m
[32m+[m[41m    [m
[32m+[m[32m    # Ruta para la documentación de la API (Swagger UI)[m
[32m+[m[32m    path('swagger/', schema_view.with_ui('swagger', cache_timeout=0), name='schema-swagger-ui'),[m
[32m+[m[41m    [m
[32m+[m[32m    # Ruta para el API Root sin autenticación[m
[32m+[m[32m    path('api/', ApiRootView.as_view(), name='api-root'),[m
[32m+[m[32m][m
\ No newline at end of file[m
[1mdiff --git a/tala_trivia/views.py b/tala_trivia/views.py[m
[1mnew file mode 100644[m
[1mindex 0000000..7dd8bbc[m
[1m--- /dev/null[m
[1m+++ b/tala_trivia/views.py[m
[36m@@ -0,0 +1,14 @@[m
[32m+[m[32mfrom rest_framework.views import APIView[m
[32m+[m[32mfrom rest_framework.permissions import AllowAny[m
[32m+[m[32mfrom rest_framework.response import Response[m
[32m+[m
[32m+[m[32mclass ApiRootView(APIView):[m
[32m+[m[32m    permission_classes = [AllowAny]  # Make sure it's accessible without authentication[m
[32m+[m
[32m+[m[32m    def get(self, request, format=None):[m
[32m+[m[32m        return Response({[m
[32m+[m[32m            'users': '/api/users/',[m
[32m+[m[32m            'questions': '/api/questions/',[m
[32m+[m[32m            'trivias': '/api/trivias/',[m
[32m+[m[32m            'ranking': '/api/ranking/',[m
[32m+[m[32m        })[m
\ No newline at end of file[m
[1mdiff --git a/trivias/__pycache__/__init__.cpython-310.pyc b/trivias/__pycache__/__init__.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex 368ddd8..0000000[m
Binary files a/trivias/__pycache__/__init__.cpython-310.pyc and /dev/null differ
[1mdiff --git a/trivias/__pycache__/admin.cpython-310.pyc b/trivias/__pycache__/admin.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex c3282b2..0000000[m
Binary files a/trivias/__pycache__/admin.cpython-310.pyc and /dev/null differ
[1mdiff --git a/trivias/__pycache__/admin.cpython-311.pyc b/trivias/__pycache__/admin.cpython-311.pyc[m
[1mindex 9583ee3..facc7f4 100644[m
Binary files a/trivias/__pycache__/admin.cpython-311.pyc and b/trivias/__pycache__/admin.cpython-311.pyc differ
[1mdiff --git a/trivias/__pycache__/apps.cpython-310.pyc b/trivias/__pycache__/apps.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex 88d8184..0000000[m
Binary files a/trivias/__pycache__/apps.cpython-310.pyc and /dev/null differ
[1mdiff --git a/trivias/__pycache__/models.cpython-310.pyc b/trivias/__pycache__/models.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex af55d01..0000000[m
Binary files a/trivias/__pycache__/models.cpython-310.pyc and /dev/null differ
[1mdiff --git a/trivias/__pycache__/models.cpython-311.pyc b/trivias/__pycache__/models.cpython-311.pyc[m
[1mindex 7394607..f29ff1c 100644[m
Binary files a/trivias/__pycache__/models.cpython-311.pyc and b/trivias/__pycache__/models.cpython-311.pyc differ
[1mdiff --git a/trivias/__pycache__/models.cpython-313.pyc b/trivias/__pycache__/models.cpython-313.pyc[m
[1mindex fd08240..035b84e 100644[m
Binary files a/trivias/__pycache__/models.cpython-313.pyc and b/trivias/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/serializers.cpython-310.pyc b/trivias/__pycache__/serializers.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex a1e484f..0000000[m
Binary files a/trivias/__pycache__/serializers.cpython-310.pyc and /dev/null differ
[1mdiff --git a/trivias/__pycache__/serializers.cpython-311.pyc b/trivias/__pycache__/serializers.cpython-311.pyc[m
[1mdeleted file mode 100644[m
[1mindex 40d0a11..0000000[m
Binary files a/trivias/__pycache__/serializers.cpython-311.pyc and /dev/null differ
[1mdiff --git a/trivias/__pycache__/serializers.cpython-313.pyc b/trivias/__pycache__/serializers.cpython-313.pyc[m
[1mindex 2bdb667..722beb2 100644[m
Binary files a/trivias/__pycache__/serializers.cpython-313.pyc and b/trivias/__pycache__/serializers.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/urls.cpython-313.pyc b/trivias/__pycache__/urls.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..c09f553[m
Binary files /dev/null and b/trivias/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/views.cpython-310.pyc b/trivias/__pycache__/views.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex b4b519b..0000000[m
Binary files a/trivias/__pycache__/views.cpython-310.pyc and /dev/null differ
[1mdiff --git a/trivias/__pycache__/views.cpython-311.pyc b/trivias/__pycache__/views.cpython-311.pyc[m
[1mdeleted file mode 100644[m
[1mindex a90f89e..0000000[m
Binary files a/trivias/__pycache__/views.cpython-311.pyc and /dev/null differ
[1mdiff --git a/trivias/__pycache__/views.cpython-313.pyc b/trivias/__pycache__/views.cpython-313.pyc[m
[1mindex 4a375ba..1636618 100644[m
Binary files a/trivias/__pycache__/views.cpython-313.pyc and b/trivias/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/trivias/migrations/0001_initial.py b/trivias/migrations/0001_initial.py[m
[1mindex c8712fe..05e7e16 100644[m
[1m--- a/trivias/migrations/0001_initial.py[m
[1m+++ b/trivias/migrations/0001_initial.py[m
[36m@@ -1,4 +1,4 @@[m
[31m-# Generated by Django 5.1.3 on 2024-11-23 08:04[m
[32m+[m[32m# Generated by Django 5.1.3 on 2024-11-24 01:17[m
 [m
 import django.db.models.deletion[m
 from django.conf import settings[m
[1mdiff --git a/trivias/migrations/__pycache__/0001_initial.cpython-313.pyc b/trivias/migrations/__pycache__/0001_initial.cpython-313.pyc[m
[1mindex cbb939f..61eaaa1 100644[m
Binary files a/trivias/migrations/__pycache__/0001_initial.cpython-313.pyc and b/trivias/migrations/__pycache__/0001_initial.cpython-313.pyc differ
[1mdiff --git a/trivias/migrations/__pycache__/__init__.cpython-313.pyc b/trivias/migrations/__pycache__/__init__.cpython-313.pyc[m
[1mindex 9b27c93..d4ea7b9 100644[m
Binary files a/trivias/migrations/__pycache__/__init__.cpython-313.pyc and b/trivias/migrations/__pycache__/__init__.cpython-313.pyc differ
[1mdiff --git a/trivias/permissions.py b/trivias/permissions.py[m
[1mnew file mode 100644[m
[1mindex 0000000..dcc94bc[m
[1m--- /dev/null[m
[1m+++ b/trivias/permissions.py[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32m# trivias/permissions.py[m
[32m+[m[32mfrom rest_framework import permissions[m
[32m+[m
[32m+[m[32mclass IsAdminUserOrReadOnly(permissions.BasePermission):[m
[32m+[m[32m    """[m
[32m+[m[32m    Permiso personalizado que solo permite que los administradores[m
[32m+[m[32m    puedan realizar operaciones de escritura (POST, PUT, DELETE).[m
[32m+[m[32m    Los usuarios normales solo pueden realizar operaciones de lectura (GET).[m
[32m+[m[32m    """[m
[32m+[m
[32m+[m[32m    def has_permission(self, request, view):[m
[32m+[m[32m        # Verificar si el usuario es administrador[m
[32m+[m[32m        if request.user and request.user.is_staff:[m
[32m+[m[32m            return True  # Administradores tienen todos los permisos[m
[32m+[m[32m        elif request.method in permissions.SAFE_METHODS:[m
[32m+[m[32m            return True  # Métodos seguros (GET, HEAD, OPTIONS) son permitidos para todos[m
[32m+[m[32m        return False  # Los demás usuarios no pueden modificar[m
[1mdiff --git a/trivias/urls.py b/trivias/urls.py[m
[1mnew file mode 100644[m
[1mindex 0000000..b284759[m
[1m--- /dev/null[m
[1m+++ b/trivias/urls.py[m
[36m@@ -0,0 +1,12 @@[m
[32m+[m[32m# # trivias/urls.py[m
[32m+[m[32m# from django.urls import path[m
[32m+[m[32m# from .views import TriviaListView, TriviaDetailView, TriviaCreateView, TriviaEditView, TriviaDeleteView[m
[32m+[m
[32m+[m[32m# urlpatterns = [[m
[32m+[m[32m#     path('trivias/', TriviaListView.as_view(), name='trivia-list'),  # Listar todas las trivias[m
[32m+[m[32m#     path('trivias/<int:pk>/', TriviaDetailView.as_view(), name='trivia-detail'),  # Detalle de una trivia[m
[32m+[m[32m#     path('trivias/create/', TriviaCreateView.as_view(), name='trivia-create'),  # Crear una nueva trivia[m
[32m+[m[32m#     path('trivias/<int:pk>/edit/', TriviaEditView.as_view(), name='trivia-edit'),  # Editar una trivia[m
[32m+[m[32m#     path('trivias/<int:pk>/delete/', TriviaDeleteView.as_view(), name='trivia-delete'),  # Eliminar una trivia[m
[32m+[m[32m# ][m
[32m+[m[41m    [m
\ No newline at end of file[m
[1mdiff --git a/trivias/views.py b/trivias/views.py[m
[1mindex 5799710..3465138 100644[m
[1m--- a/trivias/views.py[m
[1m+++ b/trivias/views.py[m
[36m@@ -1,11 +1,43 @@[m
[31m-from django.shortcuts import render[m
[31m-[m
[31m-# Create your views here.[m
[31m-# trivias/views.py[m
[32m+[m[32mfrom rest_framework import status[m
[32m+[m[32mfrom rest_framework.response import Response[m
[32m+[m[32mfrom rest_framework.decorators import action[m
 from rest_framework import viewsets[m
[31m-from .models import Trivia[m
[32m+[m[32mfrom .models import Trivia, Participation[m
 from .serializers import TriviaSerializer[m
 [m
 class TriviaViewSet(viewsets.ModelViewSet):[m
     queryset = Trivia.objects.all()[m
     serializer_class = TriviaSerializer[m
[32m+[m
[32m+[m[32m    @action(detail=True, methods=['post'])[m
[32m+[m[32m    def submit_answers(self, request, pk=None):[m
[32m+[m[32m        trivia = self.get_object()[m
[32m+[m[32m        answers = request.data.get('answers', {})[m
[32m+[m[32m        participation = Participation.objects.create([m
[32m+[m[32m            trivia=trivia,[m
[32m+[m[32m            user=request.user,[m
[32m+[m[32m            answers=answers[m
[32m+[m[32m        )[m
[32m+[m[32m        participation.calculate_score()  # Calcular el puntaje[m
[32m+[m[32m        return Response({'score': participation.score}, status=status.HTTP_200_OK)[m
[32m+[m
[32m+[m[32m    @action(detail=True, methods=['post'])[m
[32m+[m[32m    def add_question(self, request, pk=None):[m
[32m+[m[32m        trivia = self.get_object()[m
[32m+[m[32m        question_id = request.data.get('question_id')[m
[32m+[m[32m        question = Question.objects.get(id=question_id)[m
[32m+[m[32m        trivia.questions.add(question)[m
[32m+[m[32m        return Response({'message': 'Question added successfully'}, status=status.HTTP_200_OK)[m
[32m+[m[41m    [m
[32m+[m[32m    @action(detail=True, methods=['post'])[m
[32m+[m[32m    def add_user(self, request, pk=None):[m
[32m+[m[32m        trivia = self.get_object()[m
[32m+[m[32m        user = request.data.get('user_id')[m
[32m+[m[32m        trivia.users.add(user)[m
[32m+[m[32m        return Response({'message': 'User added successfully'}, status=status.HTTP_200_OK)[m
[41m+[m
[41m+[m
[41m+[m
[41m+    [m
[41m+[m
[41m+    [m
\ No newline at end of file[m
[1mdiff --git a/users/__pycache__/__init__.cpython-310.pyc b/users/__pycache__/__init__.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex aa32277..0000000[m
Binary files a/users/__pycache__/__init__.cpython-310.pyc and /dev/null differ
[1mdiff --git a/users/__pycache__/admin.cpython-310.pyc b/users/__pycache__/admin.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex 18e4b70..0000000[m
Binary files a/users/__pycache__/admin.cpython-310.pyc and /dev/null differ
[1mdiff --git a/users/__pycache__/admin.cpython-311.pyc b/users/__pycache__/admin.cpython-311.pyc[m
[1mindex 9d8e6ac..054ddf4 100644[m
Binary files a/users/__pycache__/admin.cpython-311.pyc and b/users/__pycache__/admin.cpython-311.pyc differ
[1mdiff --git a/users/__pycache__/admin.cpython-313.pyc b/users/__pycache__/admin.cpython-313.pyc[m
[1mindex 5c83532..2e39d12 100644[m
Binary files a/users/__pycache__/admin.cpython-313.pyc and b/users/__pycache__/admin.cpython-313.pyc differ
[1mdiff --git a/users/__pycache__/apps.cpython-310.pyc b/users/__pycache__/apps.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex 22071c6..0000000[m
Binary files a/users/__pycache__/apps.cpython-310.pyc and /dev/null differ
[1mdiff --git a/users/__pycache__/models.cpython-310.pyc b/users/__pycache__/models.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex bb61ae3..0000000[m
Binary files a/users/__pycache__/models.cpython-310.pyc and /dev/null differ
[1mdiff --git a/users/__pycache__/models.cpython-311.pyc b/users/__pycache__/models.cpython-311.pyc[m
[1mindex 93c32c1..406bb1e 100644[m
Binary files a/users/__pycache__/models.cpython-311.pyc and b/users/__pycache__/models.cpython-311.pyc differ
[1mdiff --git a/users/__pycache__/models.cpython-313.pyc b/users/__pycache__/models.cpython-313.pyc[m
[1mindex 365e3b7..1d64c98 100644[m
Binary files a/users/__pycache__/models.cpython-313.pyc and b/users/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/users/__pycache__/serializers.cpython-310.pyc b/users/__pycache__/serializers.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex 268e8b1..0000000[m
Binary files a/users/__pycache__/serializers.cpython-310.pyc and /dev/null differ
[1mdiff --git a/users/__pycache__/serializers.cpython-311.pyc b/users/__pycache__/serializers.cpython-311.pyc[m
[1mdeleted file mode 100644[m
[1mindex c9bc90d..0000000[m
Binary files a/users/__pycache__/serializers.cpython-311.pyc and /dev/null differ
[1mdiff --git a/users/__pycache__/serializers.cpython-313.pyc b/users/__pycache__/serializers.cpython-313.pyc[m
[1mindex 0049041..ec792da 100644[m
Binary files a/users/__pycache__/serializers.cpython-313.pyc and b/users/__pycache__/serializers.cpython-313.pyc differ
[1mdiff --git a/users/__pycache__/urls.cpython-313.pyc b/users/__pycache__/urls.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..a0401b5[m
Binary files /dev/null and b/users/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/users/__pycache__/views.cpython-310.pyc b/users/__pycache__/views.cpython-310.pyc[m
[1mdeleted file mode 100644[m
[1mindex eed2511..0000000[m
Binary files a/users/__pycache__/views.cpython-310.pyc and /dev/null differ
[1mdiff --git a/users/__pycache__/views.cpython-311.pyc b/users/__pycache__/views.cpython-311.pyc[m
[1mdeleted file mode 100644[m
[1mindex 6cad732..0000000[m
Binary files a/users/__pycache__/views.cpython-311.pyc and /dev/null differ
[1mdiff --git a/users/__pycache__/views.cpython-313.pyc b/users/__pycache__/views.cpython-313.pyc[m
[1mindex b55a1bd..af8ceb2 100644[m
Binary files a/users/__pycache__/views.cpython-313.pyc and b/users/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/users/admin.py b/users/admin.py[m
[1mindex f85d9d5..c97201a 100644[m
[1m--- a/users/admin.py[m
[1m+++ b/users/admin.py[m
[36m@@ -1,55 +1,44 @@[m
 from django.contrib import admin[m
[31m-from django.contrib.auth import get_user_model[m
[31m-from django.contrib.auth.models import Group, Permission[m
 from django.contrib.auth.admin import UserAdmin[m
[31m-from .models import CustomUser[m
[31m-[m
[31m-# Definir un formulario de usuario personalizado si deseas personalizar la interfaz de edición de usuarios[m
[32m+[m[32mfrom django.contrib.auth.forms import UserCreationForm, UserChangeForm[m
 from django import forms[m
[32m+[m[32mfrom .models import CustomUser[m
 [m
[31m-class CustomUserChangeForm(forms.ModelForm):[m
[32m+[m[32m# Formularios personalizados para el modelo de usuario[m
[32m+[m[32mclass CustomUserCreationForm(UserCreationForm):[m
     class Meta:[m
         model = CustomUser[m
[31m-        fields = ('username', 'first_name', 'last_name', 'email', 'is_active', 'is_staff', 'is_superuser', 'groups', 'user_permissions')[m
[32m+[m[32m        fields = ('username', 'email', 'first_name', 'last_name')[m
 [m
[31m-class CustomUserCreationForm(forms.ModelForm):[m
[32m+[m[32mclass CustomUserChangeForm(UserChangeForm):[m
     class Meta:[m
         model = CustomUser[m
[31m-        fields = ('username', 'first_name', 'last_name', 'email', 'password')[m
[32m+[m[32m        fields = ('username', 'email', 'first_name', 'last_name', 'is_active', 'is_staff', 'is_superuser', 'groups', 'user_permissions')[m
 [m
[31m-# Personalizar la visualización y administración del usuario personalizado[m
[32m+[m[32m# Personalización del administrador de usuarios[m
 class CustomUserAdmin(UserAdmin):[m
[31m-    # Establecer el formulario de cambio de usuario y creación de usuario[m
     form = CustomUserChangeForm[m
     add_form = CustomUserCreationForm[m
 [m
[31m-    # Especificar qué campos se mostrarán en la lista de usuarios[m
[31m-    list_display = ('username', 'first_name', 'last_name', 'email', 'is_active', 'is_staff', 'is_superuser')[m
[31m-    list_filter = ('is_active', 'is_staff', 'is_superuser', 'groups')[m
[32m+[m[32m    list_display = ('username', 'email', 'first_name', 'last_name', 'is_active', 'is_staff', 'is_superuser')[m
[32m+[m[32m    list_filter = ('is_staff', 'is_superuser', 'is_active', 'groups')[m
 [m
[31m-    # Los campos que se mostrarán en el formulario de detalles del usuario[m
     fieldsets = ([m
         (None, {'fields': ('username', 'password')}),[m
         ('Personal info', {'fields': ('first_name', 'last_name', 'email')}),[m
         ('Permissions', {'fields': ('is_active', 'is_staff', 'is_superuser', 'groups', 'user_permissions')}),[m
         ('Important dates', {'fields': ('last_login', 'date_joined')}),[m
     )[m
[31m-    # Los campos que se mostrarán en el formulario de creación de usuario[m
[32m+[m
     add_fieldsets = ([m
         (None, {[m
             'classes': ('wide',),[m
[31m-            'fields': ('username', 'first_name', 'last_name', 'email', 'password1', 'password2'),[m
[32m+[m[32m            'fields': ('username', 'email', 'first_name', 'last_name', 'password1', 'password2'),[m
         }),[m
     )[m
[31m-    search_fields = ('username', 'first_name', 'last_name', 'email')[m
[32m+[m
[32m+[m[32m    search_fields = ('username', 'email', 'first_name', 'last_name')[m
     ordering = ('username',)[m
 [m
[31m-# Registrar el modelo personalizado de usuario con la administración de Django[m
[32m+[m[32m# Registrar el modelo con el administrador personalizado[m
 admin.site.register(CustomUser, CustomUserAdmin)[m
[31m-[m
[31m-# Opcional: Registra el modelo de Grupo y Permiso si deseas personalizar su administración también[m
[31m-admin.site.unregister(Group)  # Si deseas desregistrar el Grupo predeterminado[m
[31m-admin.site.register(Group)  # Si quieres hacerlo accesible para personalizar la gestión de grupos[m
[31m-[m
[31m-# También puedes registrar permisos adicionales si necesitas manejarlos específicamente[m
[31m-admin.site.register(Permission)[m
[1mdiff --git a/users/forms.py b/users/forms.py[m
[1mnew file mode 100644[m
[1mindex 0000000..192b1f2[m
[1m--- /dev/null[m
[1m+++ b/users/forms.py[m
[36m@@ -0,0 +1,9 @@[m
[32m+[m[32mfrom django import forms[m
[32m+[m[32mfrom django.contrib.auth.forms import UserCreationForm[m
[32m+[m[32mfrom .models import CustomUser[m
[32m+[m
[32m+[m[32mclass CustomUserCreationForm(UserCreationForm):[m
[32m+[m[32m    # Puedes personalizar aquí los campos del formulario de creación de usuario[m
[32m+[m[32m    class Meta:[m
[32m+[m[32m        model = CustomUser[m
[32m+[m[32m        fields = ('username', 'first_name', 'last_name', 'email')  # Incluyendo username y email[m
[1mdiff --git a/users/migrations/0001_initial.py b/users/migrations/0001_initial.py[m
[1mindex 9c242a6..bc6e915 100644[m
[1m--- a/users/migrations/0001_initial.py[m
[1m+++ b/users/migrations/0001_initial.py[m
[36m@@ -1,4 +1,4 @@[m
[31m-# Generated by Django 5.1.3 on 2024-11-23 07:56[m
[32m+[m[32m# Generated by Django 5.1.3 on 2024-11-24 01:16[m
 [m
 import django.contrib.auth.models[m
 import django.contrib.auth.validators[m
[1mdiff --git a/users/migrations/__pycache__/0001_initial.cpython-313.pyc b/users/migrations/__pycache__/0001_initial.cpython-313.pyc[m
[1mindex 042e02f..b8778b9 100644[m
Binary files a/users/migrations/__pycache__/0001_initial.cpython-313.pyc and b/users/migrations/__pycache__/0001_initial.cpython-313.pyc differ
[1mdiff --git a/users/migrations/__pycache__/__init__.cpython-313.pyc b/users/migrations/__pycache__/__init__.cpython-313.pyc[m
[1mindex 6511cbd..b691283 100644[m
Binary files a/users/migrations/__pycache__/__init__.cpython-313.pyc and b/users/migrations/__pycache__/__init__.cpython-313.pyc differ
[1mdiff --git a/users/models.py b/users/models.py[m
[1mindex 7ca7a47..a356551 100644[m
[1m--- a/users/models.py[m
[1m+++ b/users/models.py[m
[36m@@ -17,3 +17,7 @@[m [mclass CustomUser(AbstractUser):[m
         help_text="Specific permissions for this user.",[m
         verbose_name="user permissions",[m
     )[m
[32m+[m[32m    def assign_role(self, role_name):[m
[32m+[m[32m        group, created = Group.objects.get_or_create(name=role_name)[m
[32m+[m[32m        self.groups.add(group)[m
[32m+[m[32m        self.save()[m
\ No newline at end of file[m
[1mdiff --git a/users/serializers.py b/users/serializers.py[m
[1mindex be261dc..f5dfbde 100644[m
[1m--- a/users/serializers.py[m
[1m+++ b/users/serializers.py[m
[36m@@ -5,4 +5,4 @@[m [mfrom .models import CustomUser[m
 class UserSerializer(serializers.ModelSerializer):[m
     class Meta:[m
         model = CustomUser[m
[31m-        fields = ['id', 'username', 'email', 'is_admin'][m
[32m+[m[32m        fields = ['id', 'username', 'email', 'is_staff', 'is_superuser']  # Usar is_staff o is_superuser[m
[1mdiff --git a/users/urls.py b/users/urls.py[m
[1mnew file mode 100644[m
[1mindex 0000000..7b6cab0[m
[1m--- /dev/null[m
[1m+++ b/users/urls.py[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32mfrom django.urls import path[m
[32m+[m[32mfrom .views import RegisterView, LoginView, UserDeleteView, UserEditView, UserListView, delete_all_users[m
[32m+[m
[32m+[m
[32m+[m[32murlpatterns = [[m
[32m+[m[32m    path('register/', RegisterView.as_view(), name='register'),[m
[32m+[m[32m    path('login/', LoginView.as_view(), name='login'),[m
[32m+[m[32m    path('users/', UserListView.as_view(), name='user-list'),  # URL correcta para listar usuarios[m
[32m+[m[32m    # Editar un usuario por ID[m
[32m+[m[32m    path('users/<int:pk>/edit/', UserEditView.as_view(), name='user-edit'),[m
[32m+[m[41m    [m
[32m+[m[32m    # Eliminar un usuario por ID[m
[32m+[m[32m    path('users/<int:pk>/delete/', UserDeleteView.as_view(), name='user-delete'),[m
[32m+[m[41m    [m
[32m+[m[32m    # Eliminar todos los usuarios (solo superusuario)[m
[32m+[m[32m    path('users/delete-all/', delete_all_users, name='delete-all-users'),[m
[32m+[m[32m][m
[1mdiff --git a/users/views.py b/users/views.py[m
[1mindex 332e2f5..dce636a 100644[m
[1m--- a/users/views.py[m
[1m+++ b/users/views.py[m
[36m@@ -1,11 +1,140 @@[m
[31m-from django.shortcuts import render[m
[31m-[m
[31m-# Create your views here.[m
[31m-# users/views.py[m
[31m-from rest_framework import viewsets[m
[32m+[m[32mfrom rest_framework import viewsets, status, permissions, generics[m
[32m+[m[32mfrom rest_framework.response import Response[m
[32m+[m[32mfrom rest_framework.views import APIView[m
[32m+[m[32mfrom rest_framework_simplejwt.tokens import RefreshToken[m
[32m+[m[32mfrom django.contrib.auth import get_user_model[m
[32m+[m[32mfrom rest_framework.permissions import IsAuthenticated[m
[32m+[m[32mfrom rest_framework.generics import UpdateAPIView, DestroyAPIView[m
[32m+[m[32mfrom rest_framework.exceptions import PermissionDenied[m
[32m+[m[32mfrom rest_framework.decorators import api_view[m
[32m+[m[32mfrom drf_yasg.utils import swagger_auto_schema # type: ignore[m
[32m+[m[32mfrom drf_yasg import openapi # type: ignore[m
 from .models import CustomUser[m
 from .serializers import UserSerializer[m
 [m
[32m+[m
 class UserViewSet(viewsets.ModelViewSet):[m
[32m+[m[32m    """Gestionar usuarios"""[m
[32m+[m[32m    queryset = CustomUser.objects.all()[m
[32m+[m[32m    serializer_class = UserSerializer[m
[32m+[m[32m    permission_classes = [IsAuthenticated][m
[32m+[m
[32m+[m
[32m+[m[32mclass UserListView(APIView):[m
[32m+[m[32m    """Listar todos los usuarios"""[m
[32m+[m[32m    permission_classes = [IsAuthenticated][m
[32m+[m
[32m+[m[32m    @swagger_auto_schema([m
[32m+[m[32m        operation_description="Obtiene la lista de usuarios",[m
[32m+[m[32m        responses={200: UserSerializer(many=True)},[m
[32m+[m[32m    )[m
[32m+[m[32m    def get(self, request, format=None):[m
[32m+[m[32m        users = CustomUser.objects.all()[m
[32m+[m[32m        serializer = UserSerializer(users, many=True)[m
[32m+[m[32m        return Response(serializer.data)[m
[32m+[m
[32m+[m
[32m+[m[32m# Permiso personalizado para permitir edición/eliminación solo si el usuario es administrador o el propio usuario[m
[32m+[m[32mclass IsAdminOrSelf(permissions.BasePermission):[m
[32m+[m[32m    def has_permission(self, request, view):[m
[32m+[m[32m        if request.user.is_superuser:[m
[32m+[m[32m            return True[m
[32m+[m[32m        # Permite si el usuario autenticado es el mismo que el que quiere editar/eliminar[m
[32m+[m[32m        return request.user.id == view.kwargs['pk'][m
[32m+[m
[32m+[m
[32m+[m[32mclass UserEditView(UpdateAPIView):[m
[32m+[m[32m    """Editar un usuario"""[m
     queryset = CustomUser.objects.all()[m
     serializer_class = UserSerializer[m
[32m+[m[32m    permission_classes = [permissions.IsAuthenticated, IsAdminOrSelf][m
[32m+[m
[32m+[m[32m    @swagger_auto_schema([m
[32m+[m[32m        operation_description="Editar un usuario por ID",[m
[32m+[m[32m        responses={200: UserSerializer()},[m
[32m+[m[32m    )[m
[32m+[m[32m    def patch(self, request, *args, **kwargs):[m
[32m+[m[32m        return super().patch(request, *args, **kwargs)[m
[32m+[m
[32m+[m
[32m+[m[32mclass UserDeleteView(DestroyAPIView):[m
[32m+[m[32m    """Eliminar un usuario"""[m
[32m+[m[32m    queryset = CustomUser.objects.all()[m
[32m+[m[32m    permission_classes = [permissions.IsAuthenticated, IsAdminOrSelf][m
[32m+[m
[32m+[m[32m    @swagger_auto_schema([m
[32m+[m[32m        operation_description="Eliminar un usuario por ID",[m
[32m+[m[32m        responses={204: "Usuario eliminado con éxito"},[m
[32m+[m[32m    )[m
[32m+[m[32m    def delete(self, request, *args, **kwargs):[m
[32m+[m[32m        return super().delete(request, *args, **kwargs)[m
[32m+[m
[32m+[m
[32m+[m[32m@swagger_auto_schema([m
[32m+[m[32m    method='delete',[m
[32m+[m[32m    operation_description="Eliminar todos los usuarios excepto superusuario",[m
[32m+[m[32m    responses={200: openapi.Response("Todos los usuarios han sido eliminados.")},[m
[32m+[m[32m)[m
[32m+[m[32m@api_view(['DELETE'])[m
[32m+[m[32mdef delete_all_users(request):[m
[32m+[m[32m    if not request.user.is_superuser:[m
[32m+[m[32m        raise PermissionDenied("Solo los superusuarios pueden eliminar todos los usuarios.")[m
[32m+[m[32m    # Eliminar todos los usuarios excepto el superusuario[m
[32m+[m[32m    CustomUser.objects.exclude(is_superuser=True).delete()[m
[32m+[m[32m    return Response({"message": "Todos los usuarios han sido eliminados."})[m
[32m+[m
[32m+[m
[32m+[m[32mclass RegisterView(APIView):[m
[32m+[m[32m    """Registrar un nuevo usuario"""[m
[32m+[m[32m    permission_classes = [permissions.AllowAny][m
[32m+[m
[32m+[m[32m    @swagger_auto_schema([m
[32m+[m[32m        operation_description="Registrar un usuario nuevo",[m
[32m+[m[32m        request_body=UserSerializer,[m
[32m+[m[32m        responses={201: openapi.Response("Usuario creado con éxito")},[m
[32m+[m[32m    )[m
[32m+[m[32m    def post(self, request):[m
[32m+[m[32m        serializer = UserSerializer(data=request.data)[m
[32m+[m[32m        if serializer.is_valid():[m
[32m+[m[32m            user = serializer.save()[m
[32m+[m[32m            user.assign_role('Jugador')  # Por defecto, asignamos el rol 'Jugador'[m
[32m+[m[32m            return Response({"message": "User created"}, status=status.HTTP_201_CREATED)[m
[32m+[m[32m        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)[m
[32m+[m
[32m+[m
[32m+[m[32mclass LoginView(APIView):[m
[32m+[m[32m    """Iniciar sesión"""[m
[32m+[m[32m    permission_classes = [permissions.AllowAny][m
[32m+[m
[32m+[m[32m    @swagger_auto_schema([m
[32m+[m[32m        operation_description="Iniciar sesión",[m
[32m+[m[32m        request_body=openapi.Schema([m
[32m+[m[32m            type=openapi.TYPE_OBJECT,[m
[32m+[m[32m            properties={[m
[32m+[m[32m                'username': openapi.Schema(type=openapi.TYPE_STRING, description="Nombre de usuario"),[m
[32m+[m[32m                'password': openapi.Schema(type=openapi.TYPE_STRING, description="Contraseña"),[m
[32m+[m[32m            },[m
[32m+[m[32m            required=['username', 'password'],[m
[32m+[m[32m        ),[m
[32m+[m[32m        responses={[m
[32m+[m[32m            200: openapi.Response([m
[32m+[m[32m                "Tokens generados",[m
[32m+[m[32m                examples={[m
[32m+[m[32m                    "application/json": {[m
[32m+[m[32m                        "refresh": "string_refresh_token",[m
[32m+[m[32m                        "access": "string_access_token",[m
[32m+[m[32m                    }[m
[32m+[m[32m                },[m
[32m+[m[32m            ),[m
[32m+[m[32m            400: "Credenciales inválidas",[m
[32m+[m[32m        },[m
[32m+[m[32m    )[m
[32m+[m[32m    def post(self, request):[m
[32m+[m[32m        user = get_user_model().objects.filter(username=request.data.get('username')).first()[m
[32m+[m[32m        if user and user.check_password(request.data.get('password')):[m
[32m+[m[32m            refresh = RefreshToken.for_user(user)[m
[32m+[m[32m            return Response({[m
[32m+[m[32m                'refresh': str(refresh),[m
[32m+[m[32m                'access': str(refresh.access_token),[m
[32m+[m[32m            })[m
[32m+[m[32m        return Response({'detail': 'Invalid credentials'}, status=status.HTTP_400_BAD_REQUEST)[m

[33mcommit 25afbf026392582822560d2559daa2fd2188c66e[m
Author: Hector Cano <hectorcanolealestudios@gmail.com>
Date:   Sat Nov 23 17:57:45 2024 -0300

    Estructura de la API

[1mdiff --git a/Dockerfile b/Dockerfile[m
[1mnew file mode 100644[m
[1mindex 0000000..40551e5[m
[1m--- /dev/null[m
[1m+++ b/Dockerfile[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m
[32m+[m[32mFROM python[m
[32m+[m
[32m+[m[32m# Establecer directorio de trabajo[m
[32m+[m[32mWORKDIR /app[m
[32m+[m
[32m+[m[32m# Copiar dependencias y archivos necesarios[m
[32m+[m[32mCOPY requirements.txt .[m
[32m+[m
[32m+[m[32m# Instalar dependencias[m
[32m+[m[32mRUN pip install --no-cache-dir -r requirements.txt[m
[32m+[m
[32m+[m[32m# Copiar el resto de la aplicación[m
[32m+[m[32mCOPY . .[m
[32m+[m
[32m+[m[32m# Comando por defecto[m
[32m+[m[32mCMD ["python", "manage.py", "runserver", "0.0.0.0:8000"][m
[1mdiff --git a/docker-compose.yml b/docker-compose.yml[m
[1mnew file mode 100644[m
[1mindex 0000000..47e0902[m
[1m--- /dev/null[m
[1m+++ b/docker-compose.yml[m
[36m@@ -0,0 +1,45 @@[m
[32m+[m[32mversion: '3.8'[m
[32m+[m
[32m+[m[32mservices:[m
[32m+[m[32m  db:[m
[32m+[m[32m    image: postgres:latest[m
[32m+[m[32m    environment:[m
[32m+[m[32m      POSTGRES_DB: tala_trivia_db      # Nombre de la base de datos[m
[32m+[m[32m      POSTGRES_USER: user              # Nombre de usuario de PostgreSQL[m
[32m+[m[32m      POSTGRES_PASSWORD: password      # Contraseña de usuario[m
[32m+[m[32m    ports:[m
[32m+[m[32m      - "5432:5432"                    # Puerto por defecto de PostgreSQL[m
[32m+[m[32m    volumes:[m
[32m+[m[32m      - postgres_data:/var/lib/postgresql/data[m
[32m+[m[32m    networks:[m
[32m+[m[32m      - tala_network[m
[32m+[m
[32m+[m[32m  web:[m
[32m+[m[32m    build: .[m
[32m+[m[32m    command: python manage.py runserver 0.0.0.0:8000[m
[32m+[m[32m    volumes:[m
[32m+[m[32m      - .:/app[m
[32m+[m[32m    ports:[m
[32m+[m[32m      - "8000:8000"[m
[32m+[m[32m    depends_on:[m
[32m+[m[32m      - db[m
[32m+[m[32m    networks:[m
[32m+[m[32m      - tala_network[m
[32m+[m
[32m+[m[32m  pgadmin:[m
[32m+[m[32m    image: dpage/pgadmin4:latest[m
[32m+[m[32m    environment:[m
[32m+[m[32m      PGADMIN_DEFAULT_EMAIL: admin@admin.com   # Email para pgAdmin[m
[32m+[m[32m      PGADMIN_DEFAULT_PASSWORD: admin           # Contraseña para pgAdmin[m
[32m+[m[32m    ports:[m
[32m+[m[32m      - "5050:80"                              # Acceder a pgAdmin en http://localhost:5050[m
[32m+[m[32m    depends_on:[m
[32m+[m[32m      - db[m
[32m+[m[32m    networks:[m
[32m+[m[32m      - tala_network[m
[32m+[m
[32m+[m[32mnetworks:[m
[32m+[m[32m  tala_network:[m
[32m+[m
[32m+[m[32mvolumes:[m
[32m+[m[32m  postgres_data:[m
[1mdiff --git a/manage.py b/manage.py[m
[1mnew file mode 100644[m
[1mindex 0000000..67114f6[m
[1m--- /dev/null[m
[1m+++ b/manage.py[m
[36m@@ -0,0 +1,22 @@[m
[32m+[m[32m#!/usr/bin/env python[m
[32m+[m[32m"""Django's command-line utility for administrative tasks."""[m
[32m+[m[32mimport os[m
[32m+[m[32mimport sys[m
[32m+[m
[32m+[m
[32m+[m[32mdef main():[m
[32m+[m[32m    """Run administrative tasks."""[m
[32m+[m[32m    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tala_trivia.settings')[m
[32m+[m[32m    try:[m
[32m+[m[32m        from django.core.management import execute_from_command_line[m
[32m+[m[32m    except ImportError as exc:[m
[32m+[m[32m        raise ImportError([m
[32m+[m[32m            "Couldn't import Django. Are you sure it's installed and "[m
[32m+[m[32m            "available on your PYTHONPATH environment variable? Did you "[m
[32m+[m[32m            "forget to activate a virtual environment?"[m
[32m+[m[32m        ) from exc[m
[32m+[m[32m    execute_from_command_line(sys.argv)[m
[32m+[m
[32m+[m
[32m+[m[32mif __name__ == '__main__':[m
[32m+[m[32m    main()[m
[1mdiff --git a/questions/__init__.py b/questions/__init__.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/questions/__pycache__/__init__.cpython-310.pyc b/questions/__pycache__/__init__.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..7c0a562[m
Binary files /dev/null and b/questions/__pycache__/__init__.cpython-310.pyc differ
[1mdiff --git a/questions/__pycache__/__init__.cpython-311.pyc b/questions/__pycache__/__init__.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..e93482b[m
Binary files /dev/null and b/questions/__pycache__/__init__.cpython-311.pyc differ
[1mdiff --git a/questions/__pycache__/__init__.cpython-313.pyc b/questions/__pycache__/__init__.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..300781d[m
Binary files /dev/null and b/questions/__pycache__/__init__.cpython-313.pyc differ
[1mdiff --git a/questions/__pycache__/admin.cpython-310.pyc b/questions/__pycache__/admin.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..410f24f[m
Binary files /dev/null and b/questions/__pycache__/admin.cpython-310.pyc differ
[1mdiff --git a/questions/__pycache__/admin.cpython-311.pyc b/questions/__pycache__/admin.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..3f693f7[m
Binary files /dev/null and b/questions/__pycache__/admin.cpython-311.pyc differ
[1mdiff --git a/questions/__pycache__/admin.cpython-313.pyc b/questions/__pycache__/admin.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..3eae79f[m
Binary files /dev/null and b/questions/__pycache__/admin.cpython-313.pyc differ
[1mdiff --git a/questions/__pycache__/apps.cpython-310.pyc b/questions/__pycache__/apps.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..0fbdba3[m
Binary files /dev/null and b/questions/__pycache__/apps.cpython-310.pyc differ
[1mdiff --git a/questions/__pycache__/apps.cpython-311.pyc b/questions/__pycache__/apps.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..a005bc8[m
Binary files /dev/null and b/questions/__pycache__/apps.cpython-311.pyc differ
[1mdiff --git a/questions/__pycache__/apps.cpython-313.pyc b/questions/__pycache__/apps.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..ae9ee29[m
Binary files /dev/null and b/questions/__pycache__/apps.cpython-313.pyc differ
[1mdiff --git a/questions/__pycache__/models.cpython-310.pyc b/questions/__pycache__/models.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..b51aa51[m
Binary files /dev/null and b/questions/__pycache__/models.cpython-310.pyc differ
[1mdiff --git a/questions/__pycache__/models.cpython-311.pyc b/questions/__pycache__/models.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..aca79a8[m
Binary files /dev/null and b/questions/__pycache__/models.cpython-311.pyc differ
[1mdiff --git a/questions/__pycache__/models.cpython-313.pyc b/questions/__pycache__/models.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..13fba98[m
Binary files /dev/null and b/questions/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/questions/__pycache__/serializers.cpython-310.pyc b/questions/__pycache__/serializers.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..6e0a776[m
Binary files /dev/null and b/questions/__pycache__/serializers.cpython-310.pyc differ
[1mdiff --git a/questions/__pycache__/serializers.cpython-311.pyc b/questions/__pycache__/serializers.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..f6e7f4f[m
Binary files /dev/null and b/questions/__pycache__/serializers.cpython-311.pyc differ
[1mdiff --git a/questions/__pycache__/serializers.cpython-313.pyc b/questions/__pycache__/serializers.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..97691ba[m
Binary files /dev/null and b/questions/__pycache__/serializers.cpython-313.pyc differ
[1mdiff --git a/questions/__pycache__/views.cpython-310.pyc b/questions/__pycache__/views.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..bbdfde2[m
Binary files /dev/null and b/questions/__pycache__/views.cpython-310.pyc differ
[1mdiff --git a/questions/__pycache__/views.cpython-311.pyc b/questions/__pycache__/views.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..57b20da[m
Binary files /dev/null and b/questions/__pycache__/views.cpython-311.pyc differ
[1mdiff --git a/questions/__pycache__/views.cpython-313.pyc b/questions/__pycache__/views.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..e4245ca[m
Binary files /dev/null and b/questions/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/questions/admin.py b/questions/admin.py[m
[1mnew file mode 100644[m
[1mindex 0000000..84522dd[m
[1m--- /dev/null[m
[1m+++ b/questions/admin.py[m
[36m@@ -0,0 +1,18 @@[m
[32m+[m[32mfrom django.contrib import admin[m
[32m+[m[32mfrom .models import Question[m
[32m+[m
[32m+[m[32m# Personalización del modelo Question[m
[32m+[m[32mclass QuestionAdmin(admin.ModelAdmin):[m
[32m+[m[32m    list_display = ('question_text', 'level', 'correct_answer', 'get_options')[m
[32m+[m[32m    search_fields = ('question_text', 'level', 'correct_answer')[m
[32m+[m[32m    list_filter = ('level',)  # Filtros para las dificultades de las preguntas[m
[32m+[m[32m    ordering = ['level', 'question_text']  # Ordenar por nivel y luego por texto de la pregunta[m
[32m+[m[32m    readonly_fields = ('question_text', 'level', 'correct_answer', 'get_options')[m
[32m+[m
[32m+[m[32m    # Método para mostrar las opciones de manera legible[m
[32m+[m[32m    def get_options(self, obj):[m
[32m+[m[32m        return ', '.join([f"{key}: {value}" for key, value in obj.options.items()])[m
[32m+[m[32m    get_options.short_description = 'Options'[m
[32m+[m
[32m+[m[32m# Registrar el modelo Question en el admin de Django[m
[32m+[m[32madmin.site.register(Question, QuestionAdmin)[m
[1mdiff --git a/questions/apps.py b/questions/apps.py[m
[1mnew file mode 100644[m
[1mindex 0000000..3079f26[m
[1m--- /dev/null[m
[1m+++ b/questions/apps.py[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32mfrom django.apps import AppConfig[m
[32m+[m
[32m+[m
[32m+[m[32mclass QuestionsConfig(AppConfig):[m
[32m+[m[32m    default_auto_field = 'django.db.models.BigAutoField'[m
[32m+[m[32m    name = 'questions'[m
[1mdiff --git a/questions/migrations/0001_initial.py b/questions/migrations/0001_initial.py[m
[1mnew file mode 100644[m
[1mindex 0000000..2f24472[m
[1m--- /dev/null[m
[1m+++ b/questions/migrations/0001_initial.py[m
[36m@@ -0,0 +1,24 @@[m
[32m+[m[32m# Generated by Django 5.1.3 on 2024-11-23 08:00[m
[32m+[m
[32m+[m[32mfrom django.db import migrations, models[m
[32m+[m
[32m+[m
[32m+[m[32mclass Migration(migrations.Migration):[m
[32m+[m
[32m+[m[32m    initial = True[m
[32m+[m
[32m+[m[32m    dependencies = [[m
[32m+[m[32m    ][m
[32m+[m
[32m+[m[32m    operations = [[m
[32m+[m[32m        migrations.CreateModel([m
[32m+[m[32m            name='Question',[m
[32m+[m[32m            fields=[[m
[32m+[m[32m                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),[m
[32m+[m[32m                ('question_text', models.CharField(max_length=255)),[m
[32m+[m[32m                ('level', models.CharField(choices=[('easy', 'Easy'), ('medium', 'Medium'), ('hard', 'Hard')], max_length=10)),[m
[32m+[m[32m                ('options', models.JSONField()),[m
[32m+[m[32m                ('correct_answer', models.CharField(max_length=255)),[m
[32m+[m[32m            ],[m
[32m+[m[32m        ),[m
[32m+[m[32m    ][m
[1mdiff --git a/questions/migrations/__init__.py b/questions/migrations/__init__.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/questions/migrations/__pycache__/0001_initial.cpython-313.pyc b/questions/migrations/__pycache__/0001_initial.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..7353d4a[m
Binary files /dev/null and b/questions/migrations/__pycache__/0001_initial.cpython-313.pyc differ
[1mdiff --git a/questions/migrations/__pycache__/__init__.cpython-313.pyc b/questions/migrations/__pycache__/__init__.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..ba331a1[m
Binary files /dev/null and b/questions/migrations/__pycache__/__init__.cpython-313.pyc differ
[1mdiff --git a/questions/models.py b/questions/models.py[m
[1mnew file mode 100644[m
[1mindex 0000000..4b588d0[m
[1m--- /dev/null[m
[1m+++ b/questions/models.py[m
[36m@@ -0,0 +1,20 @@[m
[32m+[m[32mfrom django.db import models[m
[32m+[m
[32m+[m[32m# Create your models here.[m
[32m+[m[32m# questions/models.py[m
[32m+[m
[32m+[m[32mfrom django.db import models[m
[32m+[m
[32m+[m[32mclass Question(models.Model):[m
[32m+[m[32m    DIFFICULTY_CHOICES = [[m
[32m+[m[32m        ('easy', 'Easy'),[m
[32m+[m[32m        ('medium', 'Medium'),[m
[32m+[m[32m        ('hard', 'Hard'),[m
[32m+[m[32m    ][m
[32m+[m[32m    question_text = models.CharField(max_length=255)[m
[32m+[m[32m    level = models.CharField(choices=DIFFICULTY_CHOICES, max_length=10)[m
[32m+[m[32m    options = models.JSONField()  # JSON to store multiple options[m
[32m+[m[32m    correct_answer = models.CharField(max_length=255)[m
[32m+[m[41m    [m
[32m+[m[32m    def __str__(self):[m
[32m+[m[32m        return self.question_text[m
[1mdiff --git a/questions/serializers.py b/questions/serializers.py[m
[1mnew file mode 100644[m
[1mindex 0000000..40dd3a0[m
[1m--- /dev/null[m
[1m+++ b/questions/serializers.py[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m# questions/serializers.py[m
[32m+[m[32mfrom rest_framework import serializers[m
[32m+[m[32mfrom .models import Question[m
[32m+[m
[32m+[m[32mclass QuestionSerializer(serializers.ModelSerializer):[m
[32m+[m[32m    class Meta:[m
[32m+[m[32m        model = Question[m
[32m+[m[32m        fields = ['id', 'question_text', 'level', 'options', 'correct_answer'][m
[1mdiff --git a/questions/tests.py b/questions/tests.py[m
[1mnew file mode 100644[m
[1mindex 0000000..7ce503c[m
[1m--- /dev/null[m
[1m+++ b/questions/tests.py[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32mfrom django.test import TestCase[m
[32m+[m
[32m+[m[32m# Create your tests here.[m
[1mdiff --git a/questions/views.py b/questions/views.py[m
[1mnew file mode 100644[m
[1mindex 0000000..1b5b7bd[m
[1m--- /dev/null[m
[1m+++ b/questions/views.py[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32mfrom django.shortcuts import render[m
[32m+[m
[32m+[m[32m# Create your views here.[m
[32m+[m[32m# questions/views.py[m
[32m+[m[32mfrom rest_framework import viewsets[m
[32m+[m[32mfrom .models import Question[m
[32m+[m[32mfrom .serializers import QuestionSerializer[m
[32m+[m
[32m+[m[32mclass QuestionViewSet(viewsets.ModelViewSet):[m
[32m+[m[32m    queryset = Question.objects.all()[m
[32m+[m[32m    serializer_class = QuestionSerializer[m
[1mdiff --git a/ranking/__init__.py b/ranking/__init__.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/ranking/__pycache__/__init__.cpython-310.pyc b/ranking/__pycache__/__init__.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..94711ed[m
Binary files /dev/null and b/ranking/__pycache__/__init__.cpython-310.pyc differ
[1mdiff --git a/ranking/__pycache__/__init__.cpython-311.pyc b/ranking/__pycache__/__init__.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..0ef0127[m
Binary files /dev/null and b/ranking/__pycache__/__init__.cpython-311.pyc differ
[1mdiff --git a/ranking/__pycache__/__init__.cpython-313.pyc b/ranking/__pycache__/__init__.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..ba7f86f[m
Binary files /dev/null and b/ranking/__pycache__/__init__.cpython-313.pyc differ
[1mdiff --git a/ranking/__pycache__/admin.cpython-310.pyc b/ranking/__pycache__/admin.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..f137ed6[m
Binary files /dev/null and b/ranking/__pycache__/admin.cpython-310.pyc differ
[1mdiff --git a/ranking/__pycache__/admin.cpython-311.pyc b/ranking/__pycache__/admin.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..756952d[m
Binary files /dev/null and b/ranking/__pycache__/admin.cpython-311.pyc differ
[1mdiff --git a/ranking/__pycache__/admin.cpython-313.pyc b/ranking/__pycache__/admin.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..1bc8ca0[m
Binary files /dev/null and b/ranking/__pycache__/admin.cpython-313.pyc differ
[1mdiff --git a/ranking/__pycache__/apps.cpython-310.pyc b/ranking/__pycache__/apps.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..3048390[m
Binary files /dev/null and b/ranking/__pycache__/apps.cpython-310.pyc differ
[1mdiff --git a/ranking/__pycache__/apps.cpython-311.pyc b/ranking/__pycache__/apps.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..24b1ce0[m
Binary files /dev/null and b/ranking/__pycache__/apps.cpython-311.pyc differ
[1mdiff --git a/ranking/__pycache__/apps.cpython-313.pyc b/ranking/__pycache__/apps.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..21695c7[m
Binary files /dev/null and b/ranking/__pycache__/apps.cpython-313.pyc differ
[1mdiff --git a/ranking/__pycache__/models.cpython-310.pyc b/ranking/__pycache__/models.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..c82f3b4[m
Binary files /dev/null and b/ranking/__pycache__/models.cpython-310.pyc differ
[1mdiff --git a/ranking/__pycache__/models.cpython-311.pyc b/ranking/__pycache__/models.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..c6eba83[m
Binary files /dev/null and b/ranking/__pycache__/models.cpython-311.pyc differ
[1mdiff --git a/ranking/__pycache__/models.cpython-313.pyc b/ranking/__pycache__/models.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..a811f59[m
Binary files /dev/null and b/ranking/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/ranking/__pycache__/serializers.cpython-310.pyc b/ranking/__pycache__/serializers.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..b426487[m
Binary files /dev/null and b/ranking/__pycache__/serializers.cpython-310.pyc differ
[1mdiff --git a/ranking/__pycache__/serializers.cpython-311.pyc b/ranking/__pycache__/serializers.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..ffc16ed[m
Binary files /dev/null and b/ranking/__pycache__/serializers.cpython-311.pyc differ
[1mdiff --git a/ranking/__pycache__/serializers.cpython-313.pyc b/ranking/__pycache__/serializers.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..330ce43[m
Binary files /dev/null and b/ranking/__pycache__/serializers.cpython-313.pyc differ
[1mdiff --git a/ranking/__pycache__/views.cpython-310.pyc b/ranking/__pycache__/views.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..8e01c89[m
Binary files /dev/null and b/ranking/__pycache__/views.cpython-310.pyc differ
[1mdiff --git a/ranking/__pycache__/views.cpython-311.pyc b/ranking/__pycache__/views.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..9d55f9b[m
Binary files /dev/null and b/ranking/__pycache__/views.cpython-311.pyc differ
[1mdiff --git a/ranking/__pycache__/views.cpython-313.pyc b/ranking/__pycache__/views.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..4bd0f61[m
Binary files /dev/null and b/ranking/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/ranking/admin.py b/ranking/admin.py[m
[1mnew file mode 100644[m
[1mindex 0000000..9e1fd37[m
[1m--- /dev/null[m
[1m+++ b/ranking/admin.py[m
[36m@@ -0,0 +1,24 @@[m
[32m+[m[32mfrom django.contrib import admin[m
[32m+[m[32mfrom .models import Ranking[m
[32m+[m[32mfrom trivias.models import Trivia[m
[32m+[m[32mfrom users.models import CustomUser[m
[32m+[m
[32m+[m[32m# Personalización del modelo Ranking[m
[32m+[m[32mclass RankingAdmin(admin.ModelAdmin):[m
[32m+[m[32m    list_display = ('trivia', 'user', 'score')[m
[32m+[m[32m    search_fields = ('user__username', 'trivia__name', 'score')[m
[32m+[m[32m    list_filter = ('trivia', 'score')[m
[32m+[m[32m    ordering = ['-score']  # Asegura que se ordenen por puntaje más alto primero[m
[32m+[m[32m    readonly_fields = ('trivia', 'user', 'score')[m
[32m+[m
[32m+[m[32m    # Métodos para mostrar información más amigable en la administración[m
[32m+[m[32m    def get_user_name(self, obj):[m
[32m+[m[32m        return obj.user.username[m
[32m+[m[32m    get_user_name.short_description = 'User'[m
[32m+[m
[32m+[m[32m    def get_trivia_name(self, obj):[m
[32m+[m[32m        return obj.trivia.name[m
[32m+[m[32m    get_trivia_name.short_description = 'Trivia'[m
[32m+[m
[32m+[m[32m# Registrar el modelo Ranking en el admin de Django[m
[32m+[m[32madmin.site.register(Ranking, RankingAdmin)[m
[1mdiff --git a/ranking/apps.py b/ranking/apps.py[m
[1mnew file mode 100644[m
[1mindex 0000000..7f45056[m
[1m--- /dev/null[m
[1m+++ b/ranking/apps.py[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32mfrom django.apps import AppConfig[m
[32m+[m
[32m+[m
[32m+[m[32mclass RankingConfig(AppConfig):[m
[32m+[m[32m    default_auto_field = 'django.db.models.BigAutoField'[m
[32m+[m[32m    name = 'ranking'[m
[1mdiff --git a/ranking/migrations/0001_initial.py b/ranking/migrations/0001_initial.py[m
[1mnew file mode 100644[m
[1mindex 0000000..5f7b839[m
[1m--- /dev/null[m
[1m+++ b/ranking/migrations/0001_initial.py[m
[36m@@ -0,0 +1,30 @@[m
[32m+[m[32m# Generated by Django 5.1.3 on 2024-11-23 08:01[m
[32m+[m
[32m+[m[32mimport django.db.models.deletion[m
[32m+[m[32mfrom django.conf import settings[m
[32m+[m[32mfrom django.db import migrations, models[m
[32m+[m
[32m+[m
[32m+[m[32mclass Migration(migrations.Migration):[m
[32m+[m
[32m+[m[32m    initial = True[m
[32m+[m
[32m+[m[32m    dependencies = [[m
[32m+[m[32m        ('trivias', '__first__'),[m
[32m+[m[32m        migrations.swappable_dependency(settings.AUTH_USER_MODEL),[m
[32m+[m[32m    ][m
[32m+[m
[32m+[m[32m    operations = [[m
[32m+[m[32m        migrations.CreateModel([m
[32m+[m[32m            name='Ranking',[m
[32m+[m[32m            fields=[[m
[32m+[m[32m                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),[m
[32m+[m[32m                ('score', models.IntegerField()),[m
[32m+[m[32m                ('trivia', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='trivias.trivia')),[m
[32m+[m[32m                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),[m
[32m+[m[32m            ],[m
[32m+[m[32m            options={[m
[32m+[m[32m                'ordering': ['-score'],[m
[32m+[m[32m            },[m
[32m+[m[32m        ),[m
[32m+[m[32m    ][m
[1mdiff --git a/ranking/migrations/__init__.py b/ranking/migrations/__init__.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/ranking/migrations/__pycache__/0001_initial.cpython-313.pyc b/ranking/migrations/__pycache__/0001_initial.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..5492c3d[m
Binary files /dev/null and b/ranking/migrations/__pycache__/0001_initial.cpython-313.pyc differ
[1mdiff --git a/ranking/migrations/__pycache__/__init__.cpython-313.pyc b/ranking/migrations/__pycache__/__init__.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..6d69152[m
Binary files /dev/null and b/ranking/migrations/__pycache__/__init__.cpython-313.pyc differ
[1mdiff --git a/ranking/models.py b/ranking/models.py[m
[1mnew file mode 100644[m
[1mindex 0000000..5b7b34d[m
[1m--- /dev/null[m
[1m+++ b/ranking/models.py[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32mfrom django.db import models[m
[32m+[m
[32m+[m[32m# Create your models here.[m
[32m+[m[32m# ranking/models.py[m
[32m+[m
[32m+[m[32mfrom django.db import models[m
[32m+[m[32mfrom users.models import CustomUser[m
[32m+[m[32mfrom trivias.models import Trivia[m
[32m+[m
[32m+[m[32mclass Ranking(models.Model):[m
[32m+[m[32m    trivia = models.ForeignKey(Trivia, on_delete=models.CASCADE)[m
[32m+[m[32m    user = models.ForeignKey(CustomUser, on_delete=models.CASCADE)[m
[32m+[m[32m    score = models.IntegerField()[m
[32m+[m
[32m+[m[32m    class Meta:[m
[32m+[m[32m        ordering = ['-score']  # Highest score first[m
[1mdiff --git a/ranking/serializers.py b/ranking/serializers.py[m
[1mnew file mode 100644[m
[1mindex 0000000..ecdd429[m
[1m--- /dev/null[m
[1m+++ b/ranking/serializers.py[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m# ranking/serializers.py[m
[32m+[m[32mfrom rest_framework import serializers[m
[32m+[m[32mfrom .models import Ranking[m
[32m+[m
[32m+[m[32mclass RankingSerializer(serializers.ModelSerializer):[m
[32m+[m[32m    class Meta:[m
[32m+[m[32m        model = Ranking[m
[32m+[m[32m        fields = ['id', 'trivia', 'user', 'score'][m
[1mdiff --git a/ranking/tests.py b/ranking/tests.py[m
[1mnew file mode 100644[m
[1mindex 0000000..7ce503c[m
[1m--- /dev/null[m
[1m+++ b/ranking/tests.py[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32mfrom django.test import TestCase[m
[32m+[m
[32m+[m[32m# Create your tests here.[m
[1mdiff --git a/ranking/views.py b/ranking/views.py[m
[1mnew file mode 100644[m
[1mindex 0000000..802bb10[m
[1m--- /dev/null[m
[1m+++ b/ranking/views.py[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32mfrom django.shortcuts import render[m
[32m+[m
[32m+[m[32m# Create your views here.[m
[32m+[m[32m# ranking/views.py[m
[32m+[m[32mfrom rest_framework import viewsets[m
[32m+[m[32mfrom .models import Ranking[m
[32m+[m[32mfrom .serializers import RankingSerializer[m
[32m+[m
[32m+[m[32mclass RankingViewSet(viewsets.ModelViewSet):[m
[32m+[m[32m    queryset = Ranking.objects.all()[m
[32m+[m[32m    serializer_class = RankingSerializer[m
[1mdiff --git a/requirements.txt b/requirements.txt[m
[1mnew file mode 100644[m
[1mindex 0000000..d9ad5c4[m
[1m--- /dev/null[m
[1m+++ b/requirements.txt[m
[36m@@ -0,0 +1,9 @@[m
[32m+[m[32masgiref==3.8.1[m
[32m+[m[32mDjango==5.1.3[m
[32m+[m[32mdjango-cors-headers==4.6.0[m
[32m+[m[32mdjangorestframework==3.15.2[m
[32m+[m[32mdjangorestframework-simplejwt==5.3.1[m
[32m+[m[32mpsycopg2-binary==2.9.10[m
[32m+[m[32mPyJWT==2.10.0[m
[32m+[m[32msqlparse==0.5.2[m
[32m+[m[32mtzdata==2024.2[m
[1mdiff --git a/tala_trivia/__init__.py b/tala_trivia/__init__.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/tala_trivia/__pycache__/__init__.cpython-310.pyc b/tala_trivia/__pycache__/__init__.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..c13b404[m
Binary files /dev/null and b/tala_trivia/__pycache__/__init__.cpython-310.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/__init__.cpython-311.pyc b/tala_trivia/__pycache__/__init__.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..8e752be[m
Binary files /dev/null and b/tala_trivia/__pycache__/__init__.cpython-311.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/__init__.cpython-313.pyc b/tala_trivia/__pycache__/__init__.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..e39a51f[m
Binary files /dev/null and b/tala_trivia/__pycache__/__init__.cpython-313.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/settings.cpython-310.pyc b/tala_trivia/__pycache__/settings.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..bc5dc95[m
Binary files /dev/null and b/tala_trivia/__pycache__/settings.cpython-310.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/settings.cpython-311.pyc b/tala_trivia/__pycache__/settings.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..08f413b[m
Binary files /dev/null and b/tala_trivia/__pycache__/settings.cpython-311.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/settings.cpython-313.pyc b/tala_trivia/__pycache__/settings.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..4a1ab3e[m
Binary files /dev/null and b/tala_trivia/__pycache__/settings.cpython-313.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/urls.cpython-310.pyc b/tala_trivia/__pycache__/urls.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..7979240[m
Binary files /dev/null and b/tala_trivia/__pycache__/urls.cpython-310.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/urls.cpython-311.pyc b/tala_trivia/__pycache__/urls.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..1278e3d[m
Binary files /dev/null and b/tala_trivia/__pycache__/urls.cpython-311.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/urls.cpython-313.pyc b/tala_trivia/__pycache__/urls.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..b4a5afa[m
Binary files /dev/null and b/tala_trivia/__pycache__/urls.cpython-313.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/wsgi.cpython-310.pyc b/tala_trivia/__pycache__/wsgi.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..5159c22[m
Binary files /dev/null and b/tala_trivia/__pycache__/wsgi.cpython-310.pyc differ
[1mdiff --git a/tala_trivia/__pycache__/wsgi.cpython-313.pyc b/tala_trivia/__pycache__/wsgi.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..3fbeb88[m
Binary files /dev/null and b/tala_trivia/__pycache__/wsgi.cpython-313.pyc differ
[1mdiff --git a/tala_trivia/asgi.py b/tala_trivia/asgi.py[m
[1mnew file mode 100644[m
[1mindex 0000000..a9fefa5[m
[1m--- /dev/null[m
[1m+++ b/tala_trivia/asgi.py[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32m"""[m
[32m+[m[32mASGI config for tala_trivia project.[m
[32m+[m
[32m+[m[32mIt exposes the ASGI callable as a module-level variable named ``application``.[m
[32m+[m
[32m+[m[32mFor more information on this file, see[m
[32m+[m[32mhttps://docs.djangoproject.com/en/5.1/howto/deployment/asgi/[m
[32m+[m[32m"""[m
[32m+[m
[32m+[m[32mimport os[m
[32m+[m
[32m+[m[32mfrom django.core.asgi import get_asgi_application[m
[32m+[m
[32m+[m[32mos.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tala_trivia.settings')[m
[32m+[m
[32m+[m[32mapplication = get_asgi_application()[m
[1mdiff --git a/tala_trivia/settings.py b/tala_trivia/settings.py[m
[1mnew file mode 100644[m
[1mindex 0000000..c37147f[m
[1m--- /dev/null[m
[1m+++ b/tala_trivia/settings.py[m
[36m@@ -0,0 +1,143 @@[m
[32m+[m[32m"""[m
[32m+[m[32mDjango settings for tala_trivia project.[m
[32m+[m
[32m+[m[32mGenerated by 'django-admin startproject' using Django 5.1.3.[m
[32m+[m
[32m+[m[32mFor more information on this file, see[m
[32m+[m[32mhttps://docs.djangoproject.com/en/5.1/topics/settings/[m
[32m+[m
[32m+[m[32mFor the full list of settings and their values, see[m
[32m+[m[32mhttps://docs.djangoproject.com/en/5.1/ref/settings/[m
[32m+[m[32m"""[m
[32m+[m
[32m+[m[32mfrom pathlib import Path[m
[32m+[m
[32m+[m[32m# Build paths inside the project like this: BASE_DIR / 'subdir'.[m
[32m+[m[32mBASE_DIR = Path(__file__).resolve().parent.parent[m
[32m+[m
[32m+[m
[32m+[m[32m# Quick-start development settings - unsuitable for production[m
[32m+[m[32m# See https://docs.djangoproject.com/en/5.1/howto/deployment/checklist/[m
[32m+[m
[32m+[m[32m# SECURITY WARNING: keep the secret key used in production secret![m
[32m+[m[32mSECRET_KEY = 'django-insecure-rf)8bqz2v2^q%c@g95izx3wa#pnj+5mb@p9a!m$^%^n9aq49bc'[m
[32m+[m
[32m+[m[32m# SECURITY WARNING: don't run with debug turned on in production![m
[32m+[m[32mDEBUG = True[m
[32m+[m
[32m+[m[32mALLOWED_HOSTS = [][m
[32m+[m
[32m+[m
[32m+[m[32m# Application definition[m
[32m+[m
[32m+[m[32mINSTALLED_APPS = [[m
[32m+[m[32m    'django.contrib.admin',[m
[32m+[m[32m    'django.contrib.auth',[m
[32m+[m[32m    'django.contrib.contenttypes',[m
[32m+[m[32m    'django.contrib.sessions',[m
[32m+[m[32m    'django.contrib.messages',[m
[32m+[m[32m    'django.contrib.staticfiles',[m
[32m+[m[32m    'rest_framework',[m
[32m+[m[32m    'rest_framework.authtoken',[m
[32m+[m[32m    'users',[m
[32m+[m[32m    'questions',[m
[32m+[m[32m    'trivias',[m
[32m+[m[32m    'ranking',[m
[32m+[m[32m][m
[32m+[m[32mREST_FRAMEWORK = {[m
[32m+[m[32m    'DEFAULT_AUTHENTICATION_CLASSES': [[m
[32m+[m[32m        'rest_framework.authentication.TokenAuthentication',[m
[32m+[m[32m    ],[m
[32m+[m[32m    'DEFAULT_PERMISSION_CLASSES': [[m
[32m+[m[32m        'rest_framework.permissions.IsAuthenticated',[m
[32m+[m[32m    ],[m
[32m+[m[32m}[m
[32m+[m[32mMIDDLEWARE = [[m
[32m+[m[32m    'django.middleware.security.SecurityMiddleware',[m
[32m+[m[32m    'django.contrib.sessions.middleware.SessionMiddleware',[m
[32m+[m[32m    'django.middleware.common.CommonMiddleware',[m
[32m+[m[32m    'django.middleware.csrf.CsrfViewMiddleware',[m
[32m+[m[32m    'django.contrib.auth.middleware.AuthenticationMiddleware',[m
[32m+[m[32m    'django.contrib.messages.middleware.MessageMiddleware',[m
[32m+[m[32m    'django.middleware.clickjacking.XFrameOptionsMiddleware',[m
[32m+[m[32m][m
[32m+[m
[32m+[m[32mROOT_URLCONF = 'tala_trivia.urls'[m
[32m+[m
[32m+[m[32mTEMPLATES = [[m
[32m+[m[32m    {[m
[32m+[m[32m        'BACKEND': 'django.template.backends.django.DjangoTemplates',[m
[32m+[m[32m        'DIRS': [],[m
[32m+[m[32m        'APP_DIRS': True,[m
[32m+[m[32m        'OPTIONS': {[m
[32m+[m[32m            'context_processors': [[m
[32m+[m[32m                'django.template.context_processors.debug',[m
[32m+[m[32m                'django.template.context_processors.request',[m
[32m+[m[32m                'django.contrib.auth.context_processors.auth',[m
[32m+[m[32m                'django.contrib.messages.context_processors.messages',[m
[32m+[m[32m            ],[m
[32m+[m[32m        },[m
[32m+[m[32m    },[m
[32m+[m[32m][m
[32m+[m
[32m+[m[32mWSGI_APPLICATION = 'tala_trivia.wsgi.application'[m
[32m+[m[32mAUTH_USER_MODEL = 'users.CustomUser'[m
[32m+[m
[32m+[m
[32m+[m[32m# Database[m
[32m+[m[32m# https://docs.djangoproject.com/en/5.1/ref/settings/#databases[m
[32m+[m
[32m+[m[32mDATABASES = {[m
[32m+[m[32m    'default': {[m
[32m+[m[32m        'ENGINE': 'django.db.backends.postgresql',[m
[32m+[m[32m        'NAME': 'tala_trivia_db',    # Nombre de la base de datos[m
[32m+[m[32m        'USER': 'user',              # Nombre de usuario de PostgreSQL[m
[32m+[m[32m        'PASSWORD': 'password',      # Contraseña de usuario[m
[32m+[m[32m        'HOST': 'db',                # Nombre del servicio de la base de datos[m
[32m+[m[32m        'PORT': '5432',              # Puerto de PostgreSQL[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32m# Password validation[m
[32m+[m[32m# https://docs.djangoproject.com/en/5.1/ref/settings/#auth-password-validators[m
[32m+[m
[32m+[m[32mAUTH_PASSWORD_VALIDATORS = [[m
[32m+[m[32m    {[m
[32m+[m[32m        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',[m
[32m+[m[32m    },[m
[32m+[m[32m][m
[32m+[m
[32m+[m
[32m+[m[32m# Internationalization[m
[32m+[m[32m# https://docs.djangoproject.com/en/5.1/topics/i18n/[m
[32m+[m
[32m+[m[32mLANGUAGE_CODE = 'en-us'[m
[32m+[m
[32m+[m[32mTIME_ZONE = 'UTC'[m
[32m+[m
[32m+[m[32mUSE_I18N = True[m
[32m+[m
[32m+[m[32mUSE_TZ = True[m
[32m+[m
[32m+[m
[32m+[m[32m# Static files (CSS, JavaScript, Images)[m
[32m+[m[32m# https://docs.djangoproject.com/en/5.1/howto/static-files/[m
[32m+[m
[32m+[m[32mSTATIC_URL = 'static/'[m
[32m+[m
[32m+[m[32m# Default primary key field type[m
[32m+[m[32m# https://docs.djangoproject.com/en/5.1/ref/settings/#default-auto-field[m
[32m+[m
[32m+[m[32mDEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'[m
[32m+[m[41m    [m
\ No newline at end of file[m
[1mdiff --git a/tala_trivia/urls.py b/tala_trivia/urls.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e6fa6b1[m
[1m--- /dev/null[m
[1m+++ b/tala_trivia/urls.py[m
[36m@@ -0,0 +1,21 @@[m
[32m+[m
[32m+[m
[32m+[m[32m# tala_trivia/urls.py[m
[32m+[m[32mfrom django.contrib import admin[m
[32m+[m[32mfrom django.urls import path, include[m
[32m+[m[32mfrom rest_framework.routers import DefaultRouter[m
[32m+[m[32mfrom users.views import UserViewSet[m
[32m+[m[32mfrom questions.views import QuestionViewSet[m
[32m+[m[32mfrom trivias.views import TriviaViewSet[m
[32m+[m[32mfrom ranking.views import RankingViewSet[m
[32m+[m
[32m+[m[32mrouter = DefaultRouter()[m
[32m+[m[32mrouter.register(r'users', UserViewSet)[m
[32m+[m[32mrouter.register(r'questions', QuestionViewSet)[m
[32m+[m[32mrouter.register(r'trivias', TriviaViewSet)[m
[32m+[m[32mrouter.register(r'ranking', RankingViewSet)[m
[32m+[m
[32m+[m[32murlpatterns = [[m
[32m+[m[32m    path('admin/', admin.site.urls),[m
[32m+[m[32m    path('api/', include(router.urls)),[m
[32m+[m[32m][m
[1mdiff --git a/tala_trivia/wsgi.py b/tala_trivia/wsgi.py[m
[1mnew file mode 100644[m
[1mindex 0000000..29a938c[m
[1m--- /dev/null[m
[1m+++ b/tala_trivia/wsgi.py[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32m"""[m
[32m+[m[32mWSGI config for tala_trivia project.[m
[32m+[m
[32m+[m[32mIt exposes the WSGI callable as a module-level variable named ``application``.[m
[32m+[m
[32m+[m[32mFor more information on this file, see[m
[32m+[m[32mhttps://docs.djangoproject.com/en/5.1/howto/deployment/wsgi/[m
[32m+[m[32m"""[m
[32m+[m
[32m+[m[32mimport os[m
[32m+[m
[32m+[m[32mfrom django.core.wsgi import get_wsgi_application[m
[32m+[m
[32m+[m[32mos.environ.setdefault('DJANGO_SETTINGS_MODULE', 'tala_trivia.settings')[m
[32m+[m
[32m+[m[32mapplication = get_wsgi_application()[m
[1mdiff --git a/trivias/__init__.py b/trivias/__init__.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/trivias/__pycache__/__init__.cpython-310.pyc b/trivias/__pycache__/__init__.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..368ddd8[m
Binary files /dev/null and b/trivias/__pycache__/__init__.cpython-310.pyc differ
[1mdiff --git a/trivias/__pycache__/__init__.cpython-311.pyc b/trivias/__pycache__/__init__.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..84ecc54[m
Binary files /dev/null and b/trivias/__pycache__/__init__.cpython-311.pyc differ
[1mdiff --git a/trivias/__pycache__/__init__.cpython-313.pyc b/trivias/__pycache__/__init__.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..0d5e239[m
Binary files /dev/null and b/trivias/__pycache__/__init__.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/admin.cpython-310.pyc b/trivias/__pycache__/admin.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..c3282b2[m
Binary files /dev/null and b/trivias/__pycache__/admin.cpython-310.pyc differ
[1mdiff --git a/trivias/__pycache__/admin.cpython-311.pyc b/trivias/__pycache__/admin.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..9583ee3[m
Binary files /dev/null and b/trivias/__pycache__/admin.cpython-311.pyc differ
[1mdiff --git a/trivias/__pycache__/admin.cpython-313.pyc b/trivias/__pycache__/admin.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..c36e394[m
Binary files /dev/null and b/trivias/__pycache__/admin.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/apps.cpython-310.pyc b/trivias/__pycache__/apps.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..88d8184[m
Binary files /dev/null and b/trivias/__pycache__/apps.cpython-310.pyc differ
[1mdiff --git a/trivias/__pycache__/apps.cpython-311.pyc b/trivias/__pycache__/apps.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..01509b2[m
Binary files /dev/null and b/trivias/__pycache__/apps.cpython-311.pyc differ
[1mdiff --git a/trivias/__pycache__/apps.cpython-313.pyc b/trivias/__pycache__/apps.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..61d0d33[m
Binary files /dev/null and b/trivias/__pycache__/apps.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/models.cpython-310.pyc b/trivias/__pycache__/models.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..af55d01[m
Binary files /dev/null and b/trivias/__pycache__/models.cpython-310.pyc differ
[1mdiff --git a/trivias/__pycache__/models.cpython-311.pyc b/trivias/__pycache__/models.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..7394607[m
Binary files /dev/null and b/trivias/__pycache__/models.cpython-311.pyc differ
[1mdiff --git a/trivias/__pycache__/models.cpython-313.pyc b/trivias/__pycache__/models.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..fd08240[m
Binary files /dev/null and b/trivias/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/serializers.cpython-310.pyc b/trivias/__pycache__/serializers.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..a1e484f[m
Binary files /dev/null and b/trivias/__pycache__/serializers.cpython-310.pyc differ
[1mdiff --git a/trivias/__pycache__/serializers.cpython-311.pyc b/trivias/__pycache__/serializers.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..40d0a11[m
Binary files /dev/null and b/trivias/__pycache__/serializers.cpython-311.pyc differ
[1mdiff --git a/trivias/__pycache__/serializers.cpython-313.pyc b/trivias/__pycache__/serializers.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..2bdb667[m
Binary files /dev/null and b/trivias/__pycache__/serializers.cpython-313.pyc differ
[1mdiff --git a/trivias/__pycache__/views.cpython-310.pyc b/trivias/__pycache__/views.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..b4b519b[m
Binary files /dev/null and b/trivias/__pycache__/views.cpython-310.pyc differ
[1mdiff --git a/trivias/__pycache__/views.cpython-311.pyc b/trivias/__pycache__/views.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..a90f89e[m
Binary files /dev/null and b/trivias/__pycache__/views.cpython-311.pyc differ
[1mdiff --git a/trivias/__pycache__/views.cpython-313.pyc b/trivias/__pycache__/views.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..4a375ba[m
Binary files /dev/null and b/trivias/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/trivias/admin.py b/trivias/admin.py[m
[1mnew file mode 100644[m
[1mindex 0000000..c9b73cf[m
[1m--- /dev/null[m
[1m+++ b/trivias/admin.py[m
[36m@@ -0,0 +1,37 @@[m
[32m+[m[32mfrom django.contrib import admin[m
[32m+[m
[32m+[m[32m# Register your models here.[m
[32m+[m[32mfrom django.contrib import admin[m
[32m+[m[32mfrom .models import Trivia, Participation[m
[32m+[m[32mfrom django.contrib.auth import get_user_model[m
[32m+[m[32mfrom questions.models import Question[m
[32m+[m
[32m+[m[32m# Personalización del modelo Trivia[m
[32m+[m[32mclass TriviaAdmin(admin.ModelAdmin):[m
[32m+[m[32m    list_display = ('name', 'description', 'get_users', 'get_questions')[m
[32m+[m[32m    search_fields = ('name', 'description')[m
[32m+[m[32m    list_filter = ('name',)[m
[32m+[m[41m    [m
[32m+[m[32m    # Métodos para mostrar los usuarios y preguntas asociados a la trivia[m
[32m+[m[32m    def get_users(self, obj):[m
[32m+[m[32m        return ", ".join([user.username for user in obj.users.all()])[m
[32m+[m[32m    get_users.short_description = 'Users'[m
[32m+[m[41m    [m
[32m+[m[32m    def get_questions(self, obj):[m
[32m+[m[32m        return ", ".join([str(question) for question in obj.questions.all()])[m
[32m+[m[32m    get_questions.short_description = 'Questions'[m
[32m+[m
[32m+[m[32m# Personalización del modelo Participation[m
[32m+[m[32mclass ParticipationAdmin(admin.ModelAdmin):[m
[32m+[m[32m    list_display = ('user', 'trivia', 'score', 'get_answers')[m
[32m+[m[32m    search_fields = ('user__username', 'trivia__name')[m
[32m+[m[32m    list_filter = ('score',)[m
[32m+[m[41m    [m
[32m+[m[32m    # Método para mostrar las respuestas del usuario en formato legible[m
[32m+[m[32m    def get_answers(self, obj):[m
[32m+[m[32m        return str(obj.answers)[m
[32m+[m[32m    get_answers.short_description = 'Answers'[m
[32m+[m
[32m+[m[32m# Registrar los modelos en el admin de Django[m
[32m+[m[32madmin.site.register(Trivia, TriviaAdmin)[m
[32m+[m[32madmin.site.register(Participation, ParticipationAdmin)[m
[1mdiff --git a/trivias/apps.py b/trivias/apps.py[m
[1mnew file mode 100644[m
[1mindex 0000000..4a898c0[m
[1m--- /dev/null[m
[1m+++ b/trivias/apps.py[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32mfrom django.apps import AppConfig[m
[32m+[m
[32m+[m
[32m+[m[32mclass TriviasConfig(AppConfig):[m
[32m+[m[32m    default_auto_field = 'django.db.models.BigAutoField'[m
[32m+[m[32m    name = 'trivias'[m
[1mdiff --git a/trivias/migrations/0001_initial.py b/trivias/migrations/0001_initial.py[m
[1mnew file mode 100644[m
[1mindex 0000000..c8712fe[m
[1m--- /dev/null[m
[1m+++ b/trivias/migrations/0001_initial.py[m
[36m@@ -0,0 +1,38 @@[m
[32m+[m[32m# Generated by Django 5.1.3 on 2024-11-23 08:04[m
[32m+[m
[32m+[m[32mimport django.db.models.deletion[m
[32m+[m[32mfrom django.conf import settings[m
[32m+[m[32mfrom django.db import migrations, models[m
[32m+[m
[32m+[m
[32m+[m[32mclass Migration(migrations.Migration):[m
[32m+[m
[32m+[m[32m    initial = True[m
[32m+[m
[32m+[m[32m    dependencies = [[m
[32m+[m[32m        ('questions', '0001_initial'),[m
[32m+[m[32m        migrations.swappable_dependency(settings.AUTH_USER_MODEL),[m
[32m+[m[32m    ][m
[32m+[m
[32m+[m[32m    operations = [[m
[32m+[m[32m        migrations.CreateModel([m
[32m+[m[32m            name='Trivia',[m
[32m+[m[32m            fields=[[m
[32m+[m[32m                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),[m
[32m+[m[32m                ('name', models.CharField(max_length=255)),[m
[32m+[m[32m                ('description', models.TextField()),[m
[32m+[m[32m                ('questions', models.ManyToManyField(related_name='trivias', to='questions.question')),[m
[32m+[m[32m                ('users', models.ManyToManyField(related_name='trivias', to=settings.AUTH_USER_MODEL)),[m
[32m+[m[32m            ],[m
[32m+[m[32m        ),[m
[32m+[m[32m        migrations.CreateModel([m
[32m+[m[32m            name='Participation',[m
[32m+[m[32m            fields=[[m
[32m+[m[32m                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),[m
[32m+[m[32m                ('answers', models.JSONField()),[m
[32m+[m[32m                ('score', models.IntegerField(default=0)),[m
[32m+[m[32m                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),[m
[32m+[m[32m                ('trivia', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='trivias.trivia')),[m
[32m+[m[32m            ],[m
[32m+[m[32m        ),[m
[32m+[m[32m    ][m
[1mdiff --git a/trivias/migrations/__init__.py b/trivias/migrations/__init__.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/trivias/migrations/__pycache__/0001_initial.cpython-313.pyc b/trivias/migrations/__pycache__/0001_initial.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..cbb939f[m
Binary files /dev/null and b/trivias/migrations/__pycache__/0001_initial.cpython-313.pyc differ
[1mdiff --git a/trivias/migrations/__pycache__/__init__.cpython-313.pyc b/trivias/migrations/__pycache__/__init__.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..9b27c93[m
Binary files /dev/null and b/trivias/migrations/__pycache__/__init__.cpython-313.pyc differ
[1mdiff --git a/trivias/models.py b/trivias/models.py[m
[1mnew file mode 100644[m
[1mindex 0000000..5c5f524[m
[1m--- /dev/null[m
[1m+++ b/trivias/models.py[m
[36m@@ -0,0 +1,38 @@[m
[32m+[m[32mfrom django.db import models[m
[32m+[m
[32m+[m[32m# Create your models here.[m
[32m+[m[32m# trivias/models.py[m
[32m+[m[32mfrom django.db import models[m
[32m+[m[32mfrom users.models import CustomUser[m
[32m+[m[32mfrom questions.models import Question[m
[32m+[m
[32m+[m[32mclass Trivia(models.Model):[m
[32m+[m[32m    name = models.CharField(max_length=255)[m
[32m+[m[32m    description = models.TextField()[m
[32m+[m[32m    users = models.ManyToManyField(CustomUser, related_name='trivias')[m
[32m+[m[32m    questions = models.ManyToManyField(Question, related_name='trivias')[m
[32m+[m[41m    [m
[32m+[m[32m    def __str__(self):[m
[32m+[m[32m        return self.name[m
[32m+[m
[32m+[m[32m# trivias/models.py[m
[32m+[m
[32m+[m[32mclass Participation(models.Model):[m
[32m+[m[32m    user = models.ForeignKey(CustomUser, on_delete=models.CASCADE)[m
[32m+[m[32m    trivia = models.ForeignKey(Trivia, on_delete=models.CASCADE)[m
[32m+[m[32m    answers = models.JSONField()  # Almacena las respuestas del usuario[m
[32m+[m[32m    score = models.IntegerField(default=0)[m
[32m+[m[41m    [m
[32m+[m[32m    def calculate_score(self):[m
[32m+[m[32m        total_score = 0[m
[32m+[m[32m        for question_id, answer in self.answers.items():[m
[32m+[m[32m            question = Question.objects.get(id=question_id)[m
[32m+[m[32m            if question.correct_answer == answer:[m
[32m+[m[32m                if question.level == 'easy':[m
[32m+[m[32m                    total_score += 1[m
[32m+[m[32m                elif question.level == 'medium':[m
[32m+[m[32m                    total_score += 2[m
[32m+[m[32m                elif question.level == 'hard':[m
[32m+[m[32m                    total_score += 3[m
[32m+[m[32m        self.score = total_score[m
[32m+[m[32m        self.save()[m
[1mdiff --git a/trivias/serializers.py b/trivias/serializers.py[m
[1mnew file mode 100644[m
[1mindex 0000000..9cfb618[m
[1m--- /dev/null[m
[1m+++ b/trivias/serializers.py[m
[36m@@ -0,0 +1,13 @@[m
[32m+[m[32m# trivias/serializers.py[m
[32m+[m[32mfrom rest_framework import serializers[m
[32m+[m[32mfrom .models import Trivia[m
[32m+[m[32mfrom users.serializers import UserSerializer[m
[32m+[m[32mfrom questions.serializers import QuestionSerializer[m
[32m+[m
[32m+[m[32mclass TriviaSerializer(serializers.ModelSerializer):[m
[32m+[m[32m    users = UserSerializer(many=True)[m
[32m+[m[32m    questions = QuestionSerializer(many=True)[m
[32m+[m
[32m+[m[32m    class Meta:[m
[32m+[m[32m        model = Trivia[m
[32m+[m[32m        fields = ['id', 'name', 'description', 'users', 'questions'][m
[1mdiff --git a/trivias/tests.py b/trivias/tests.py[m
[1mnew file mode 100644[m
[1mindex 0000000..7ce503c[m
[1m--- /dev/null[m
[1m+++ b/trivias/tests.py[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32mfrom django.test import TestCase[m
[32m+[m
[32m+[m[32m# Create your tests here.[m
[1mdiff --git a/trivias/views.py b/trivias/views.py[m
[1mnew file mode 100644[m
[1mindex 0000000..5799710[m
[1m--- /dev/null[m
[1m+++ b/trivias/views.py[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32mfrom django.shortcuts import render[m
[32m+[m
[32m+[m[32m# Create your views here.[m
[32m+[m[32m# trivias/views.py[m
[32m+[m[32mfrom rest_framework import viewsets[m
[32m+[m[32mfrom .models import Trivia[m
[32m+[m[32mfrom .serializers import TriviaSerializer[m
[32m+[m
[32m+[m[32mclass TriviaViewSet(viewsets.ModelViewSet):[m
[32m+[m[32m    queryset = Trivia.objects.all()[m
[32m+[m[32m    serializer_class = TriviaSerializer[m
[1mdiff --git a/users/__init__.py b/users/__init__.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/users/__pycache__/__init__.cpython-310.pyc b/users/__pycache__/__init__.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..aa32277[m
Binary files /dev/null and b/users/__pycache__/__init__.cpython-310.pyc differ
[1mdiff --git a/users/__pycache__/__init__.cpython-311.pyc b/users/__pycache__/__init__.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..5b9f2a6[m
Binary files /dev/null and b/users/__pycache__/__init__.cpython-311.pyc differ
[1mdiff --git a/users/__pycache__/__init__.cpython-313.pyc b/users/__pycache__/__init__.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..f893340[m
Binary files /dev/null and b/users/__pycache__/__init__.cpython-313.pyc differ
[1mdiff --git a/users/__pycache__/admin.cpython-310.pyc b/users/__pycache__/admin.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..18e4b70[m
Binary files /dev/null and b/users/__pycache__/admin.cpython-310.pyc differ
[1mdiff --git a/users/__pycache__/admin.cpython-311.pyc b/users/__pycache__/admin.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..9d8e6ac[m
Binary files /dev/null and b/users/__pycache__/admin.cpython-311.pyc differ
[1mdiff --git a/users/__pycache__/admin.cpython-313.pyc b/users/__pycache__/admin.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..5c83532[m
Binary files /dev/null and b/users/__pycache__/admin.cpython-313.pyc differ
[1mdiff --git a/users/__pycache__/apps.cpython-310.pyc b/users/__pycache__/apps.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..22071c6[m
Binary files /dev/null and b/users/__pycache__/apps.cpython-310.pyc differ
[1mdiff --git a/users/__pycache__/apps.cpython-311.pyc b/users/__pycache__/apps.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..47e4411[m
Binary files /dev/null and b/users/__pycache__/apps.cpython-311.pyc differ
[1mdiff --git a/users/__pycache__/apps.cpython-313.pyc b/users/__pycache__/apps.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..251c752[m
Binary files /dev/null and b/users/__pycache__/apps.cpython-313.pyc differ
[1mdiff --git a/users/__pycache__/models.cpython-310.pyc b/users/__pycache__/models.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..bb61ae3[m
Binary files /dev/null and b/users/__pycache__/models.cpython-310.pyc differ
[1mdiff --git a/users/__pycache__/models.cpython-311.pyc b/users/__pycache__/models.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..93c32c1[m
Binary files /dev/null and b/users/__pycache__/models.cpython-311.pyc differ
[1mdiff --git a/users/__pycache__/models.cpython-313.pyc b/users/__pycache__/models.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..365e3b7[m
Binary files /dev/null and b/users/__pycache__/models.cpython-313.pyc differ
[1mdiff --git a/users/__pycache__/serializers.cpython-310.pyc b/users/__pycache__/serializers.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..268e8b1[m
Binary files /dev/null and b/users/__pycache__/serializers.cpython-310.pyc differ
[1mdiff --git a/users/__pycache__/serializers.cpython-311.pyc b/users/__pycache__/serializers.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..c9bc90d[m
Binary files /dev/null and b/users/__pycache__/serializers.cpython-311.pyc differ
[1mdiff --git a/users/__pycache__/serializers.cpython-313.pyc b/users/__pycache__/serializers.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..0049041[m
Binary files /dev/null and b/users/__pycache__/serializers.cpython-313.pyc differ
[1mdiff --git a/users/__pycache__/views.cpython-310.pyc b/users/__pycache__/views.cpython-310.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..eed2511[m
Binary files /dev/null and b/users/__pycache__/views.cpython-310.pyc differ
[1mdiff --git a/users/__pycache__/views.cpython-311.pyc b/users/__pycache__/views.cpython-311.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..6cad732[m
Binary files /dev/null and b/users/__pycache__/views.cpython-311.pyc differ
[1mdiff --git a/users/__pycache__/views.cpython-313.pyc b/users/__pycache__/views.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..b55a1bd[m
Binary files /dev/null and b/users/__pycache__/views.cpython-313.pyc differ
[1mdiff --git a/users/admin.py b/users/admin.py[m
[1mnew file mode 100644[m
[1mindex 0000000..f85d9d5[m
[1m--- /dev/null[m
[1m+++ b/users/admin.py[m
[36m@@ -0,0 +1,55 @@[m
[32m+[m[32mfrom django.contrib import admin[m
[32m+[m[32mfrom django.contrib.auth import get_user_model[m
[32m+[m[32mfrom django.contrib.auth.models import Group, Permission[m
[32m+[m[32mfrom django.contrib.auth.admin import UserAdmin[m
[32m+[m[32mfrom .models import CustomUser[m
[32m+[m
[32m+[m[32m# Definir un formulario de usuario personalizado si deseas personalizar la interfaz de edición de usuarios[m
[32m+[m[32mfrom django import forms[m
[32m+[m
[32m+[m[32mclass CustomUserChangeForm(forms.ModelForm):[m
[32m+[m[32m    class Meta:[m
[32m+[m[32m        model = CustomUser[m
[32m+[m[32m        fields = ('username', 'first_name', 'last_name', 'email', 'is_active', 'is_staff', 'is_superuser', 'groups', 'user_permissions')[m
[32m+[m
[32m+[m[32mclass CustomUserCreationForm(forms.ModelForm):[m
[32m+[m[32m    class Meta:[m
[32m+[m[32m        model = CustomUser[m
[32m+[m[32m        fields = ('username', 'first_name', 'last_name', 'email', 'password')[m
[32m+[m
[32m+[m[32m# Personalizar la visualización y administración del usuario personalizado[m
[32m+[m[32mclass CustomUserAdmin(UserAdmin):[m
[32m+[m[32m    # Establecer el formulario de cambio de usuario y creación de usuario[m
[32m+[m[32m    form = CustomUserChangeForm[m
[32m+[m[32m    add_form = CustomUserCreationForm[m
[32m+[m
[32m+[m[32m    # Especificar qué campos se mostrarán en la lista de usuarios[m
[32m+[m[32m    list_display = ('username', 'first_name', 'last_name', 'email', 'is_active', 'is_staff', 'is_superuser')[m
[32m+[m[32m    list_filter = ('is_active', 'is_staff', 'is_superuser', 'groups')[m
[32m+[m
[32m+[m[32m    # Los campos que se mostrarán en el formulario de detalles del usuario[m
[32m+[m[32m    fieldsets = ([m
[32m+[m[32m        (None, {'fields': ('username', 'password')}),[m
[32m+[m[32m        ('Personal info', {'fields': ('first_name', 'last_name', 'email')}),[m
[32m+[m[32m        ('Permissions', {'fields': ('is_active', 'is_staff', 'is_superuser', 'groups', 'user_permissions')}),[m
[32m+[m[32m        ('Important dates', {'fields': ('last_login', 'date_joined')}),[m
[32m+[m[32m    )[m
[32m+[m[32m    # Los campos que se mostrarán en el formulario de creación de usuario[m
[32m+[m[32m    add_fieldsets = ([m
[32m+[m[32m        (None, {[m
[32m+[m[32m            'classes': ('wide',),[m
[32m+[m[32m            'fields': ('username', 'first_name', 'last_name', 'email', 'password1', 'password2'),[m
[32m+[m[32m        }),[m
[32m+[m[32m    )[m
[32m+[m[32m    search_fields = ('username', 'first_name', 'last_name', 'email')[m
[32m+[m[32m    ordering = ('username',)[m
[32m+[m
[32m+[m[32m# Registrar el modelo personalizado de usuario con la administración de Django[m
[32m+[m[32madmin.site.register(CustomUser, CustomUserAdmin)[m
[32m+[m
[32m+[m[32m# Opcional: Registra el modelo de Grupo y Permiso si deseas personalizar su administración también[m
[32m+[m[32madmin.site.unregister(Group)  # Si deseas desregistrar el Grupo predeterminado[m
[32m+[m[32madmin.site.register(Group)  # Si quieres hacerlo accesible para personalizar la gestión de grupos[m
[32m+[m
[32m+[m[32m# También puedes registrar permisos adicionales si necesitas manejarlos específicamente[m
[32m+[m[32madmin.site.register(Permission)[m
[1mdiff --git a/users/apps.py b/users/apps.py[m
[1mnew file mode 100644[m
[1mindex 0000000..72b1401[m
[1m--- /dev/null[m
[1m+++ b/users/apps.py[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32mfrom django.apps import AppConfig[m
[32m+[m
[32m+[m
[32m+[m[32mclass UsersConfig(AppConfig):[m
[32m+[m[32m    default_auto_field = 'django.db.models.BigAutoField'[m
[32m+[m[32m    name = 'users'[m
[1mdiff --git a/users/migrations/0001_initial.py b/users/migrations/0001_initial.py[m
[1mnew file mode 100644[m
[1mindex 0000000..9c242a6[m
[1m--- /dev/null[m
[1m+++ b/users/migrations/0001_initial.py[m
[36m@@ -0,0 +1,44 @@[m
[32m+[m[32m# Generated by Django 5.1.3 on 2024-11-23 07:56[m
[32m+[m
[32m+[m[32mimport django.contrib.auth.models[m
[32m+[m[32mimport django.contrib.auth.validators[m
[32m+[m[32mimport django.utils.timezone[m
[32m+[m[32mfrom django.db import migrations, models[m
[32m+[m
[32m+[m
[32m+[m[32mclass Migration(migrations.Migration):[m
[32m+[m
[32m+[m[32m    initial = True[m
[32m+[m
[32m+[m[32m    dependencies = [[m
[32m+[m[32m        ('auth', '0012_alter_user_first_name_max_length'),[m
[32m+[m[32m    ][m
[32m+[m
[32m+[m[32m    operations = [[m
[32m+[m[32m        migrations.CreateModel([m
[32m+[m[32m            name='CustomUser',[m
[32m+[m[32m            fields=[[m
[32m+[m[32m                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),[m
[32m+[m[32m                ('password', models.CharField(max_length=128, verbose_name='password')),[m
[32m+[m[32m                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),[m
[32m+[m[32m                ('is_superuser', models.BooleanField(default=False, help_text='Designates that this user has all permissions without explicitly assigning them.', verbose_name='superuser status')),[m
[32m+[m[32m                ('username', models.CharField(error_messages={'unique': 'A user with that username already exists.'}, help_text='Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.', max_length=150, unique=True, validators=[django.contrib.auth.validators.UnicodeUsernameValidator()], verbose_name='username')),[m
[32m+[m[32m                ('first_name', models.CharField(blank=True, max_length=150, verbose_name='first name')),[m
[32m+[m[32m                ('last_name', models.CharField(blank=True, max_length=150, verbose_name='last name')),[m
[32m+[m[32m                ('email', models.EmailField(blank=True, max_length=254, verbose_name='email address')),[m
[32m+[m[32m                ('is_staff', models.BooleanField(default=False, help_text='Designates whether the user can log into this admin site.', verbose_name='staff status')),[m
[32m+[m[32m                ('is_active', models.BooleanField(default=True, help_text='Designates whether this user should be treated as active. Unselect this instead of deleting accounts.', verbose_name='active')),[m
[32m+[m[32m                ('date_joined', models.DateTimeField(default=django.utils.timezone.now, verbose_name='date joined')),[m
[32m+[m[32m                ('groups', models.ManyToManyField(blank=True, help_text='The groups this user belongs to.', related_name='customuser_set', to='auth.group', verbose_name='groups')),[m
[32m+[m[32m                ('user_permissions', models.ManyToManyField(blank=True, help_text='Specific permissions for this user.', related_name='customuser_permissions', to='auth.permission', verbose_name='user permissions')),[m
[32m+[m[32m            ],[m
[32m+[m[32m            options={[m
[32m+[m[32m                'verbose_name': 'user',[m
[32m+[m[32m                'verbose_name_plural': 'users',[m
[32m+[m[32m                'abstract': False,[m
[32m+[m[32m            },[m
[32m+[m[32m            managers=[[m
[32m+[m[32m                ('objects', django.contrib.auth.models.UserManager()),[m
[32m+[m[32m            ],[m
[32m+[m[32m        ),[m
[32m+[m[32m    ][m
[1mdiff --git a/users/migrations/__init__.py b/users/migrations/__init__.py[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/users/migrations/__pycache__/0001_initial.cpython-313.pyc b/users/migrations/__pycache__/0001_initial.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..042e02f[m
Binary files /dev/null and b/users/migrations/__pycache__/0001_initial.cpython-313.pyc differ
[1mdiff --git a/users/migrations/__pycache__/__init__.cpython-313.pyc b/users/migrations/__pycache__/__init__.cpython-313.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..6511cbd[m
Binary files /dev/null and b/users/migrations/__pycache__/__init__.cpython-313.pyc differ
[1mdiff --git a/users/models.py b/users/models.py[m
[1mnew file mode 100644[m
[1mindex 0000000..7ca7a47[m
[1m--- /dev/null[m
[1m+++ b/users/models.py[m
[36m@@ -0,0 +1,19 @@[m
[32m+[m[32mfrom django.contrib.auth.models import AbstractUser, Group, Permission[m
[32m+[m[32mfrom django.db import models[m
[32m+[m
[32m+[m[32mclass CustomUser(AbstractUser):[m
[32m+[m[32m    # Define related_name para evitar conflictos[m
[32m+[m[32m    groups = models.ManyToManyField([m
[32m+[m[32m        Group,[m
[32m+[m[32m        related_name="customuser_set",  # Cambiar a algo único[m
[32m+[m[32m        blank=True,[m
[32m+[m[32m        help_text="The groups this user belongs to.",[m
[32m+[m[32m        verbose_name="groups",[m
[32m+[m[32m    )[m
[32m+[m[32m    user_permissions = models.ManyToManyField([m
[32m+[m[32m        Permission,[m
[32m+[m[32m        related_name="customuser_permissions",  # Cambiar a algo único[m
[32m+[m[32m        blank=True,[m
[32m+[m[32m        help_text="Specific permissions for this user.",[m
[32m+[m[32m        verbose_name="user permissions",[m
[32m+[m[32m    )[m
[1mdiff --git a/users/serializers.py b/users/serializers.py[m
[1mnew file mode 100644[m
[1mindex 0000000..be261dc[m
[1m--- /dev/null[m
[1m+++ b/users/serializers.py[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m# users/serializers.py[m
[32m+[m[32mfrom rest_framework import serializers[m
[32m+[m[32mfrom .models import CustomUser[m
[32m+[m
[32m+[m[32mclass UserSerializer(serializers.ModelSerializer):[m
[32m+[m[32m    class Meta:[m
[32m+[m[32m        model = CustomUser[m
[32m+[m[32m        fields = ['id', 'username', 'email', 'is_admin'][m
[1mdiff --git a/users/tests.py b/users/tests.py[m
[1mnew file mode 100644[m
[1mindex 0000000..7ce503c[m
[1m--- /dev/null[m
[1m+++ b/users/tests.py[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32mfrom django.test import TestCase[m
[32m+[m
[32m+[m[32m# Create your tests here.[m
[1mdiff --git a/users/views.py b/users/views.py[m
[1mnew file mode 100644[m
[1mindex 0000000..332e2f5[m
[1m--- /dev/null[m
[1m+++ b/users/views.py[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32mfrom django.shortcuts import render[m
[32m+[m
[32m+[m[32m# Create your views here.[m
[32m+[m[32m# users/views.py[m
[32m+[m[32mfrom rest_framework import viewsets[m
[32m+[m[32mfrom .models import CustomUser[m
[32m+[m[32mfrom .serializers import UserSerializer[m
[32m+[m
[32m+[m[32mclass UserViewSet(viewsets.ModelViewSet):[m
[32m+[m[32m    queryset = CustomUser.objects.all()[m
[32m+[m[32m    serializer_class = UserSerializer[m
