-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-03-2023 a las 05:00:09
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lector_rss`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `ID` int(11) NOT NULL,
  `IDSitioWeb` int(11) NOT NULL,
  `URL` varchar(200) NOT NULL,
  `Titulo` varchar(150) NOT NULL,
  `Fecha` date NOT NULL,
  `Descripcion` varchar(500) NOT NULL,
  `Categorias` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`ID`, `IDSitioWeb`, `URL`, `Titulo`, `Fecha`, `Descripcion`, `Categorias`) VALUES
(1135, 47, 'https://metricool.com/ai-social-media-content-generator/', 'Metricool’s AI social media content generator ', '2023-02-28', 'Artificial intelligence is an excellent tool for creating text for social media posts. This will save you time and energy during times of writer’s block or to generate new ideas. ', 'Content Marketing'),
(1136, 47, 'https://metricool.com/tiktok-songs/', 'Most popular TikTok songs of 2023', '2023-02-28', 'TikTok videos have become a true revolution in networks and digital marketing. One ingredient that has never been missing has been music, so here we bring you the most popular TikTok songs in 2021 to accompany your videos.\n', 'TikTok'),
(1137, 47, 'https://metricool.com/instagram-collaborative-posts/', 'Instagram Collaborative Posts ', '2023-02-23', 'Instagram collaborative posts are allowing two creators to join and share content. Learn how these work and how businesses can utilize them to boost content. ', 'Instagram'),
(1138, 47, 'https://metricool.com/instagram-lead-generation/', 'Instagram Lead Generation ', '2023-02-22', 'Have you considered using Instagram to generate leads? Learn how it works and the best practices to convert prospects into customers. ', 'Instagram'),
(1139, 47, 'https://metricool.com/verify-instagram-account/', 'How to verify your Instagram account', '2023-02-21', 'How can you verify your Instagram account? Is it possible to receive the Instagram verification badge and not die trying? Now, you can request verification on Instagram. Keep reading to learn two different ways to get the blue check mark added to your account. Verify Instagram account via subscription By paying for a subscription, you [&#8230;]', 'Instagram'),
(1140, 47, 'https://metricool.com/what-is-instagram-shadowban/', 'Does shadowban on Instagram exist? ', '2023-02-20', 'The term Shadowban is in everybody’s mind. Do you know that it can affect your Instagram account? You will find all the info about what it is and how to avoid it HERE', 'Instagram'),
(1141, 47, 'https://metricool.com/tiktok-creator-marketplace/', 'What is TikTok Creator Marketplace?', '2023-02-16', 'Learn all about TikTok’s official collaboration platform, TikTok Creator Marketplace. Creators can now join forces with brands and work together on reward-based campaigns. ', 'TikTok'),
(1142, 47, 'https://metricool.com/content-planning-social-media/', 'Content Planning 101: How to Manage Your Content Projects', '2023-02-15', 'Want to improve your content plan but not sure where to start? Learn how to create an effective content plan and how you can implement it into your strategy. ', 'Content Marketing'),
(1143, 47, 'https://metricool.com/social-media-content-plan/', 'How to Make a Social Media Content Plan', '2023-02-14', 'Making a content plan in social networks is not only about publishing in networks, but it is also about analyzing what to publish, at what time, to which audience this publication is addressed... and above all with what objective. Do you want to learn more? Here you have all the information.', 'Social Media'),
(1144, 50, 'https://josefacchin.com/reels-de-instagram-guia/', '¿Qué son los reels de Instagram y cómo se hacen? Guía completa + trucos', '2023-02-26', 'En 2020, Instagram lanzó Reels, una nueva función para crear y ver contenido en video de unos pocos segundos de duración. ¿La intención? Competir con el gigantesco fenómeno TikTok. Así, la...', 'Social Media, Instagram'),
(1145, 50, 'https://josefacchin.com/cac-coste-adquisicion-cliente/', '¿Qué es CAC o coste de adquisición de cliente, cómo se calcula y cuáles son las claves para reducirlo?', '2023-02-19', 'Para lograr atraer clientes potenciales y convertirlos en compradores, tienes que invertir tiempo y dinero en buenas estrategias. Pero, no puedes hacerlo sin control, necesitas saber cuál es el CAC...', 'Negocios en Internet'),
(1146, 50, 'https://josefacchin.com/yoast-seo/', '¿Qué Yoast SEO, para qué sirve y cómo configurar este plugin de WordPress?', '2023-02-12', 'Yoast SEO es uno de los plugins más populares de WordPress para la optimización interna del sitio web. Gracias a sus diversas funciones podemos realizar los ajustes pertinentes que mejorarán...', 'Guías de SEO'),
(1147, 50, 'https://josefacchin.com/rank-math/', '¿Qué es Rank Math, para qué sirve este plugin SEO y cómo configurarlo?', '2023-02-05', '¿Buscas la manera de optimizar el SEO On Page de tu web  y al mismo tiempo no quieres modificar manualmente los ficheros más comprometidos de tu site? Si este es tu caso, puedes utilizar un plugin...', 'Guías de SEO'),
(1148, 50, 'https://josefacchin.com/ltv-lifetime-value/', '¿Qué es LTV o valor de vida del cliente y cómo se calcula? Fórmula y ejemplos', '2023-01-29', 'Al aplicar una estrategia de marketing y ventas vas a conseguir muchos clientes, pero no todos van a facturar igual ni durante el mismo tiempo. Conocer el valor de vida de tu cliente es vital para tu...', 'Negocios en Internet'),
(1149, 50, 'https://josefacchin.com/que-es-el-copywriting/', '¿Qué es el copywriting? Claves y consejos para que tus textos vendan', '2023-01-22', '¿Puede el poder de las palabras ayudarte a conseguir tus objetivos y vender más? La respuesta es sí, y se llama copywriting. Hoy vas a descubrir cómo la escritura persuasiva es todo un arte y,...', 'Marketing en Internet'),
(1150, 50, 'https://josefacchin.com/satisfaccion-del-cliente/', '¿Qué es la satisfacción del cliente y cómo medirla en tu proyecto?', '2023-01-15', 'Algunas marcas tienden a subestimar la importancia de la satisfacción del cliente, creyendo que son más importantes otras métricas como la tasa de conversión y las ventas. Y si bien es verdad...', 'Marketing en Internet'),
(1151, 50, 'https://josefacchin.com/auditoria-seo/', '¿Qué es y cómo se hace una Auditoría SEO de un sitio Web paso a paso?', '2023-01-10', 'Son pocas las personas que conocen cuál es la verdadera importancia de hacer una auditoría SEO. En la actualidad, muchos clientes no entienden que no se debe comenzar a trabajar en la estrategia de...', 'Guías de SEO'),
(1152, 50, 'https://josefacchin.com/se-ranking/', 'Tutorial de SE Ranking ¡La herramienta SEO todo en uno que estás necesitando!', '2023-01-09', 'Con esta mega guía aprende a usar SE Ranking desde cero y como un profesional del SEO, para sacarle el máximo provecho a cada una de sus potentes y completas funcionalidades (además, en este...', 'Guías de SEO'),
(1153, 50, 'https://josefacchin.com/metodo-kaizen/', '¿Qué es el método Kaizen y cómo puedes aplicarlo a tu proyecto?', '2023-01-08', 'En una empresa o negocio siempre hay cosas que se pueden mejorar, aunque parezca que todo está bien. Pero ¿cómo lograr esa mejora continua? Pues, con el método Kaizen, una filosofía que miles de...', 'Marketing en Internet'),
(1154, 50, 'https://josefacchin.com/brand-ambassador-o-embajador-de-marca/', '¿Qué es un Brand Ambassador o embajador de marca y cuáles son sus funciones?', '2023-01-01', 'Un brand ambassador o embajador de marca es una de las figuras del marketing actual con mayor crecimiento. Las empresas utilizan a personas que tienen alguna reputación e influencia en un público...', 'Marketing en Internet'),
(1155, 50, 'https://josefacchin.com/referral-marketing/', '¿Qué es el Referral Marketing, qué beneficios aporta y cómo implementarlo en tu estrategia?', '2022-12-25', 'Las campañas de publicidad, tanto convencional como digital, ayudan a las marcas a conseguir más clientes en diferentes entornos. Pero el Referral Marketing bien aplicado puede arrojar muchos más...', 'Marketing en Internet'),
(1156, 50, 'https://josefacchin.com/herramientas-seo/', 'Las 27 mejores herramientas SEO para posicionar tus proyectos Web en Internet', '2022-12-25', '¿Cuáles son las mejores herramientas SEO gratuitas o de pago? Si has trabajado con alguna plataforma de Marketing, seguro que sabes de las ventajas que te ofrecen al momento de analizar una Web y...', 'Guías de SEO'),
(1157, 50, 'https://josefacchin.com/metricool-tutorial/', 'Mega Tutorial de Metricool ¡Aprende a gestionar y analizar tus estrategias Digitales!', '2022-12-18', '¿Aún no conoces Metricool y su enorme cantidad de funcionalidades? Esta es mi herramienta favorita para gestionar toda mi presencia en redes sociales y analizar mis campañas publicitarias, sobre...', 'Social Media'),
(1158, 50, 'https://josefacchin.com/design-thinking/', '¿Qué es el design thinking, cuáles son sus beneficios y cómo aplicarlo en tu proyecto ?', '2022-12-11', 'El pensamiento de diseño o design thinking es una disciplina que ha potenciado el desarrollo de productos, fundamentado el crecimiento de modelos de negocios y afianzado las estrategias de marketing...', 'Marketing en Internet'),
(1159, 50, 'https://josefacchin.com/que-es-el-seo/', '¿Qué es el posicionamiento SEO y qué factores tener en cuenta para optimizarlo?', '2022-12-05', '¿Alguna vez te has preguntado qué es el Posicionamiento SEO? Son muchos los que aún tienen dudas sobre este tema. De hecho, imagino que si has llegado hasta este post, es que como mínimo tú...', 'Guías de SEO'),
(1160, 50, 'https://josefacchin.com/seo-para-ecommerce/', 'SEO para eCommerce ¡La guía completa para posicionar tu tienda Online!', '2022-12-04', 'Si quieres lograr tus objetivo comerciales en Internet, necesitas aprender SEO para eCommerce. Actualmente, atraer clientes a tu tienda Online puede ser muy difícil, y es que con tantos resultados...', 'Guías de SEO'),
(1161, 50, 'https://josefacchin.com/mejor-hora-para-publicar-en-tiktok/', '¿Cuál es la mejor hora para publicar en TikTok en 2023? Para España, México y Latinoamérica', '2022-11-27', 'Si quieres que tus contenidos en redes sociales destaquen entre la competencia, una de las claves es conocer la mejor hora para publicar en TikTok. De esta manera podrás conseguir más vistas,...', 'TikTok'),
(1162, 50, 'https://josefacchin.com/navegadores-web/', '¿Cuáles son los mejores navegadores de Internet? Los programas más usados', '2022-11-24', '¿Conoces algún otro navegador Web de Internet además del que usas habitualmente? Estoy seguro de que, si preguntas esto a alguien, normalmente conozcan tan sólo el que le vino por defecto...', 'Tecnología'),
(1163, 50, 'https://josefacchin.com/doppler/', '¿Qué es Doppler, cómo se usa y por qué elegirla como tu herramienta de envío de emails?', '2022-11-20', 'Hoy quiero hablarte de cómo se utiliza Doppler una de las mejores herramientas para el envío masivo de emails, el diseño de Newsletters o Mailings personalizados, la automatización de flujos o...', 'Tecnología'),
(1164, 50, 'https://josefacchin.com/wetransfer-que-es-como-funciona/', '¿Qué es WeTransfer, para qué sirve y cómo funciona esta plataforma?', '2022-11-17', 'Es probable que alguna vez te hayas preguntado qué es WeTransfer y cómo funciona en español esta plataforma que está tan de moda y de la que muchos usuarios hablan. Y no me extraña, ya que como...', 'Tecnología'),
(1165, 50, 'https://josefacchin.com/que-es-un-insight/', '¿Qué es un insight y cómo encontrar el tuyo para tus estrategias de Marketing?', '2022-11-13', 'El insight del consumidor… El gran sueño de todos los equipos de marketing. ¿Por qué es tan importante conocerlo? Porque ese es el camino hacia la maximización de las ventas de tu producto o...', 'Marketing en Internet'),
(1166, 50, 'https://josefacchin.com/mapa-de-contenidos/', '¿Qué es un mapa de contenidos, para qué sirve y cómo crear uno en tu estrategia?', '2022-11-06', 'En la actualidad, para llevar a cabo una estrategia más potente de contenidos, necesitas poseer una hoja de ruta. Y para no perderte en este camino, un Mapa de Contenidos o Content Mapping te...', 'Marketing en Internet'),
(1167, 50, 'https://josefacchin.com/que-es-php/', '¿Qué es el lenguaje de programación PHP y su importancia para la optimización web?', '2022-10-30', '¿Tienes una web, un eCommerce o un blog? Sí es así, entonces estoy seguro de que el lenguaje de programación PHP te tiene que resultar un poco familiar, pues es uno de los lenguajes más...', 'Tecnología, Autor Invitado'),
(1168, 50, 'https://josefacchin.com/migracion-seo/', '¿Qué es una migración SEO y cómo hacerla correctamente? Guía paso a paso', '2022-10-23', 'Planificar e implementar una migración SEO suele parecer una tarea complicada, ¡y lo es! No obstante, si se realiza adecuadamente y con sumo cuidado, te permitirá migrar tu sitio web sin tener que...', 'Guías de SEO'),
(1169, 50, 'https://josefacchin.com/que-es-faq/', '¿Qué es una página de FAQ o preguntas frecuentes y por qué debes tener una? + Ejemplos', '2022-10-16', 'Me apuesto lo que quieras a que en algún momento has visitado una página de FAQ. Y es que estos contenidos son muy útiles para el usuario. La de preguntas frecuentes, es una de las secciones...', 'Marketing en Internet'),
(1170, 50, 'https://josefacchin.com/monetiza/', 'Agenda del #Monetiza22 ¡Congreso Online y Gratuito sobre eCommerce!', '2022-10-10', 'Por séptimo año consecutivo, en este 2022 se avecina una nueva edición de #Monetiza22, uno de los Congresos Online y gratuitos sobre eCommerce y Monetización Digital más grandes de la comunidad...', 'Negocios en Internet'),
(1171, 50, 'https://josefacchin.com/marketing-viral/', '¿Qué es el Marketing Viral y cómo funciona? Beneficios, estrategias y ejemplos', '2022-10-09', 'Con las redes sociales es muy común hablar de marketing viral, atribuyéndose a las campañas en las que un contenido es compartido miles o hasta millones de veces. Pero lo cierto es que el concepto...', 'Marketing en Internet'),
(1172, 50, 'https://josefacchin.com/que-es-ugc-user-generated-content/', '¿Qué es UGC o User Generated Content y cómo usarlo en tu estrategia de contenidos?', '2022-10-02', 'Uno de los mayores retos de cualquier empresa o marca es ganarse la confianza de su audiencia, algo que con buenas estrategias se puede lograr. Una de las más efectivas de la actualidad es...', 'Marketing en Internet'),
(1173, 50, 'https://josefacchin.com/que-son-pain-points-puntos-dolor-marketing/', '¿Qué son los pain points o puntos de dolor en marketing y cómo utilizarlos?', '2022-09-25', '¿Sabías que tus clientes tienen pain points (puntos de dolor) que tú puedes atender con tus productos o servicios? Así es, todos los públicos tienen temores e inconvenientes que tú, como marca...', 'Marketing en Internet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitiosweb`
--

CREATE TABLE `sitiosweb` (
  `id` int(10) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sitiosweb`
--

INSERT INTO `sitiosweb` (`id`, `url`) VALUES
(47, 'https://metricool.com/feed/'),
(50, 'https://josefacchin.com/feed/');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `sitiosweb`
--
ALTER TABLE `sitiosweb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1174;

--
-- AUTO_INCREMENT de la tabla `sitiosweb`
--
ALTER TABLE `sitiosweb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
