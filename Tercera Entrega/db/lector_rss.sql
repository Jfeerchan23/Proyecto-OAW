-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2023 a las 03:14:18
-- Versión del servidor: 10.4.21-MariaDB-log
-- Versión de PHP: 8.2.4

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
(6732, 62, 'https://josefacchin.com/migrar-wordpress/', '¿Cómo migrar WordPress a otro Hosting sin complicaciones y paso a paso?', '2023-05-14', '¿Quieres saber cómo migrar WordPress a otro hosting? Todo proyecto digital nace con un nombre de dominio, un CMS y un hosting. Y si estás aquí, es porque el tiempo ha pasado y tu proyecto ha...', 'Marketing en Internet'),
(6733, 62, 'https://josefacchin.com/brand-awareness/', '¿Qué es el Brand Awareness y cómo potenciar el de tu empresa o negocio?', '2023-05-07', '¿Podrías nombrarme tres marcas de coche? Seguro que estas pensado en marcas muy conocidas, y eso no es fruto de la casualidad. Esto pasa porque esas empresas han sabido trabajar bien su brand...', 'Negocios en Internet'),
(6734, 62, 'https://josefacchin.com/cloudflare/', '¿Qué es Cloudflare, cómo funciona y cómo afecta al SEO y a la experiencia de usuario?', '2023-04-30', 'Seguridad, agilidad y eficiencia son virtudes que debe tener tu sitio. Y es aquí donde entra en acción Cloudflare para mostrar el contenido de tu web de manera rápida y con los mejores protocolos....', 'Tecnología'),
(6735, 62, 'https://josefacchin.com/posiciona/', 'Vídeos del #Posiciona23 ¡El Congreso de posicionamiento en Internet que no debes perderte!', '2023-04-28', '¡Vídeos del evento! Una año más, ha pasado #Posiciona23. Y en esta 7º edición aprendimos a potenciar el posicionamiento de nuestros sitios Web y a mejorar la visibilidad en redes sociales de...', 'Marketing en Internet'),
(6736, 62, 'https://josefacchin.com/roundcube-webmail/', '¿Qué es RoundCube Webmail y cómo funciona este gestor de correo online?', '2023-04-23', 'Agilizar la gestión de tu correo electrónico es esencial si cuentas con una empresa o marca personal, con Roundcube Webmail podrás leer y redactar emails de manera remota sin necesidad de utilizar...', 'Marketing en Internet'),
(6737, 62, 'https://josefacchin.com/que-es-chatgpt/', '¿Qué es ChatGPT, cómo funciona y cómo utilizarlo para potenciar tu estrategia de marketing?', '2023-04-16', '¿Sabes qué es ChatGPT y para qué sirve? El ChatGPT se ha convertido en la IA más famosa de nuestra época debido a su capacidad de interacción con los usuarios para mantener conversación o...', 'Marketing en Internet'),
(6738, 62, 'https://josefacchin.com/eeat-seo/', 'EEAT en SEO ¿Qué es y cómo trabajarlo para mejorar la calidad de una web?', '2023-04-09', '¿Sabías que el EEAT en SEO es una evolución reciente del EAT y que ahora este juega un mayor papel en temas de posicionamiento web? En los últimos años, Google sigue demostrando su interés en...', 'Guías de SEO'),
(6739, 62, 'https://josefacchin.com/se-ranking/', 'Tutorial de SE Ranking ¡La herramienta SEO todo en uno que estás necesitando!', '2023-04-02', 'Con esta mega guía aprende a usar SE Ranking desde cero y como un profesional del SEO, para sacarle el máximo provecho a cada una de sus potentes y completas funcionalidades (además, en este...', 'Guías de SEO'),
(6740, 62, 'https://josefacchin.com/imagen-de-marca/', '¿Qué es la imagen de marca y cómo crearla correctamente?', '2023-03-26', 'Si deseas tener éxito en tu empresa o negocio, entonces es indispensable una imagen de marca, puesto que ayuda a que los consumidores puedan identificarte fácilmente, genera confianza y mejora la...', 'Marketing en Internet'),
(6741, 62, 'https://josefacchin.com/identidad-verbal/', '¿Qué es la Identidad Verbal y qué necesitas para construir la de tu marca?', '2023-03-19', 'La mayoría de las empresas cometen por lo general un error: se centran demasiado en temas visuales, pero dejan casi o totalmente abandonado lo relacionado con la identidad verbal (factor que...', 'Marketing en Internet'),
(6742, 62, 'https://josefacchin.com/identidad-visual/', '¿Qué es la identidad visual y cuáles elementos usar para crear una marca potente?', '2023-03-12', 'La identidad visual es la gran afortunada del branding, la parte más visible de la marca, la que todo el mundo reconoce. Sin embargo, para llegar a ella existe un proceso de construcción y un...', 'Marketing en Internet'),
(6743, 62, 'https://josefacchin.com/semrush/', 'La guía más completa de Semrush en español con la que dominar a tus competidores', '2023-03-05', '¿Quieres aprender a utilizar Semrush como un auténtico profesional? Como saben mis lectores y seguidores, colaboré varios años como freelance con los equipos de marketing de esta marca, primero...', 'Guías de SEO'),
(6744, 62, 'https://josefacchin.com/reels-de-instagram-guia/', '¿Qué son los reels de Instagram y cómo se hacen? Guía completa + trucos', '2023-02-26', 'En 2020, Instagram lanzó Reels, una nueva función para crear y ver contenido en video de unos pocos segundos de duración. ¿La intención? Competir con el gigantesco fenómeno TikTok. Así, la...', 'Social Media, Instagram'),
(6745, 62, 'https://josefacchin.com/inbound-vs-outbound-marketing/', 'Inbound Marketing vs. Outbound Marketing ¡Sus similitudes y diferencias!', '2023-02-19', 'Inbound marketing vs. outbound marketing: dos estrategias de generación de leads aparentemente opuestas, pero que quizás no lo sean tanto… ¿En qué consisten estas estrategias? ¿Hay que...', 'Marketing en Internet'),
(6746, 62, 'https://josefacchin.com/yoast-seo/', '¿Qué Yoast SEO, para qué sirve y cómo configurar este plugin de WordPress?', '2023-02-12', 'Yoast SEO es uno de los plugins más populares de WordPress para la optimización interna del sitio web. Gracias a sus diversas funciones podemos realizar los ajustes pertinentes que mejorarán...', 'Guías de SEO'),
(6747, 62, 'https://josefacchin.com/rank-math/', '¿Qué es Rank Math, para qué sirve este plugin SEO y cómo configurarlo?', '2023-02-05', '¿Buscas la manera de optimizar el SEO On Page de tu web  y al mismo tiempo no quieres modificar manualmente los ficheros más comprometidos de tu site? Si este es tu caso, puedes utilizar un plugin...', 'Guías de SEO'),
(6748, 62, 'https://josefacchin.com/auditoria-seo/', '¿Qué es y cómo se hace una Auditoría SEO de un sitio Web paso a paso?', '2023-01-29', 'Son pocas las personas que conocen cuál es la verdadera importancia de hacer una auditoría SEO. En la actualidad, muchos clientes no entienden que no se debe comenzar a trabajar en la estrategia de...', 'Guías de SEO'),
(6749, 62, 'https://josefacchin.com/herramientas-seo/', 'Las 27 mejores herramientas SEO para posicionar tus proyectos Web en Internet', '2023-01-25', '¿Cuáles son las mejores herramientas SEO gratuitas o de pago? Si has trabajado con alguna plataforma de Marketing, seguro que sabes de las ventajas que te ofrecen al momento de analizar una Web y...', 'Guías de SEO'),
(6750, 62, 'https://josefacchin.com/que-es-el-copywriting/', '¿Qué es el copywriting? Claves y consejos para que tus textos vendan', '2023-01-22', '¿Puede el poder de las palabras ayudarte a conseguir tus objetivos y vender más? La respuesta es sí, y se llama copywriting. Hoy vas a descubrir cómo la escritura persuasiva es todo un arte y,...', 'Marketing en Internet'),
(6751, 62, 'https://josefacchin.com/cac-coste-adquisicion-cliente/', '¿Qué es CAC o coste de adquisición de cliente, cómo se calcula y cuáles son las claves para reducirlo?', '2023-01-15', 'Para lograr atraer clientes potenciales y convertirlos en compradores, tienes que invertir tiempo y dinero en buenas estrategias. Pero, no puedes hacerlo sin control, necesitas saber cuál es el CAC...', 'Negocios en Internet'),
(6752, 62, 'https://josefacchin.com/ltv-lifetime-value/', '¿Qué es LTV o valor de vida del cliente y cómo se calcula? Fórmula y ejemplos', '2023-01-08', 'Al aplicar una estrategia de marketing y ventas vas a conseguir muchos clientes, pero no todos van a facturar igual ni durante el mismo tiempo. Conocer el valor de vida de tu cliente es vital para tu...', 'Negocios en Internet'),
(6753, 62, 'https://josefacchin.com/metodo-kaizen/', '¿Qué es el método Kaizen y cómo puedes aplicarlo a tu proyecto?', '2023-01-08', 'En una empresa o negocio siempre hay cosas que se pueden mejorar, aunque parezca que todo está bien. Pero ¿cómo lograr esa mejora continua? Pues, con el método Kaizen, una filosofía que miles de...', 'Marketing en Internet'),
(6754, 62, 'https://josefacchin.com/satisfaccion-del-cliente/', '¿Qué es la satisfacción del cliente y cómo medirla en tu proyecto?', '2023-01-05', 'Algunas marcas tienden a subestimar la importancia de la satisfacción del cliente, creyendo que son más importantes otras métricas como la tasa de conversión y las ventas. Y si bien es verdad...', 'Marketing en Internet'),
(6755, 62, 'https://josefacchin.com/brand-ambassador-o-embajador-de-marca/', '¿Qué es un Brand Ambassador o embajador de marca y cuáles son sus funciones?', '2023-01-01', 'Un brand ambassador o embajador de marca es una de las figuras del marketing actual con mayor crecimiento. Las empresas utilizan a personas que tienen alguna reputación e influencia en un público...', 'Marketing en Internet'),
(6756, 62, 'https://josefacchin.com/referral-marketing/', '¿Qué es el Referral Marketing, qué beneficios aporta y cómo implementarlo en tu estrategia?', '2022-12-25', 'Las campañas de publicidad, tanto convencional como digital, ayudan a las marcas a conseguir más clientes en diferentes entornos. Pero el Referral Marketing bien aplicado puede arrojar muchos más...', 'Marketing en Internet'),
(6757, 62, 'https://josefacchin.com/metricool-tutorial/', 'Mega Tutorial de Metricool ¡Aprende a gestionar y analizar tus estrategias Digitales!', '2022-12-18', '¿Aún no conoces Metricool y su enorme cantidad de funcionalidades? Esta es mi herramienta favorita para gestionar toda mi presencia en redes sociales y analizar mis campañas publicitarias, sobre...', 'Social Media'),
(6758, 62, 'https://josefacchin.com/design-thinking/', '¿Qué es el design thinking, cuáles son sus beneficios y cómo aplicarlo en tu proyecto ?', '2022-12-11', 'El pensamiento de diseño o design thinking es una disciplina que ha potenciado el desarrollo de productos, fundamentado el crecimiento de modelos de negocios y afianzado las estrategias de marketing...', 'Marketing en Internet'),
(6759, 62, 'https://josefacchin.com/que-es-el-seo/', '¿Qué es el posicionamiento SEO y qué factores tener en cuenta para optimizarlo?', '2022-12-05', '¿Alguna vez te has preguntado qué es el Posicionamiento SEO? Son muchos los que aún tienen dudas sobre este tema. De hecho, imagino que si has llegado hasta este post, es que como mínimo tú...', 'Guías de SEO'),
(6760, 62, 'https://josefacchin.com/seo-para-ecommerce/', 'SEO para eCommerce ¡La guía completa para posicionar tu tienda Online!', '2022-12-04', 'Si quieres lograr tus objetivo comerciales en Internet, necesitas aprender SEO para eCommerce. Actualmente, atraer clientes a tu tienda Online puede ser muy difícil, y es que con tantos resultados...', 'Guías de SEO'),
(6761, 62, 'https://josefacchin.com/mejor-hora-para-publicar-en-tiktok/', '¿Cuál es la mejor hora para publicar en TikTok en 2023? Para España, México y Latinoamérica', '2022-11-27', 'Si quieres que tus contenidos en redes sociales destaquen entre la competencia, una de las claves es conocer la mejor hora para publicar en TikTok. De esta manera podrás conseguir más vistas,...', 'TikTok');

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
(62, 'https://josefacchin.com/feed');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6762;

--
-- AUTO_INCREMENT de la tabla `sitiosweb`
--
ALTER TABLE `sitiosweb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
