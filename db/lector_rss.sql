-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2023 a las 04:30:53
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

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
(41, 9, 'https://www.nytimes.com/2023/02/21/world/europe/biden-putin-russia-ukraine.html', 'Biden Accuses Putin of Atrocities and Urges World to Rebuke Him', '2023-02-22', 'In sharply opposed speeches, President Biden said Vladimir V. Putin bore sole responsibility for the war, while Mr. Putin said Russia had invaded in self-defense. But they agreed the war would not end soon.', 'Russia, Ukraine, Moscow (Russia), Warsaw (Poland), Blinken, Antony J, Duda, Andrzej (1972- ), Putin,'),
(42, 9, 'https://www.nytimes.com/2023/02/21/world/europe/giorgia-meloni-ukraine-kyiv-russia.html', 'Italy’s Giorgia Meloni Condemns Russia and Pledges Further Support to Ukraine', '2023-02-21', 'The prime minister, Giorgia Meloni, reiterated her backing amid dissension within her coalition government on the issue.', 'Russian Invasion of Ukraine (2022), Salvini, Matteo, Zelensky, Volodymyr, Putin, Vladimir V, Meloni,'),
(43, 9, 'https://www.nytimes.com/video/world/europe/100000008780581/italy-ukraine-war-aid.html', 'Italian Prime Minister Pledges Additional Support for Ukraine', '2023-02-21', 'Prime Minister Giorgia Meloni of Italy vowed to continue to provide Ukraine with military, financial and humanitarian support, but said supplying military planes was “not on the table.”', 'Politics and Government, Ukraine, Italy, Meloni, Giorgia (1977- ), Defense and Military Forces'),
(44, 9, 'https://www.nytimes.com/2023/02/21/briefing/biden-putin-speeches-ukraine.html', 'Your Wednesday Briefing: Biden and Putin Speak on Ukraine', '2023-02-21', 'Also, Saudi Arabia intensifies a crackdown and the Philippines moves closer to the U.S.', 'Saudi Arabia, Marcos, Ferdinand Jr, Philippines, Russian Invasion of Ukraine (2022), Ukraine, Russia'),
(45, 9, 'https://www.nytimes.com/2023/02/21/us/politics/judge-sept-11-afghan-central-bank.html', 'Judge Rejects Bid by Sept. 11 Families to Seize Frozen Afghan Central Bank Funds', '2023-02-21', 'A lawyer for the lead group of victim relatives who had sought $3.5 billion in frozen assets said they would appeal.', 'Afghanistan, Daniels, George B, Federal Reserve Bank of New York, Taliban, United States Politics an'),
(46, 9, 'https://www.nytimes.com/2023/02/21/health/mpox-hiv.html', 'Mpox Often Leads to Severe Illness, Even Death, in People With Advanced H.I.V.', '2023-02-21', 'The death rate among these patients is about 15 percent, researchers reported. The virus should be added to the list of opportunistic infections seen in patients with advanced H.I.V., scientists said.', 'Lancet, The (Journal), Viruses, Deaths (Fatalities), Immune System, Research, Monkeypox, Acquired Im'),
(47, 9, 'https://www.nytimes.com/2023/02/21/world/europe/poland-russia-ukraine.html', 'Poland’s Prime Minister Says His Country Was Right About Russia', '2023-02-22', 'Having been proved right about Russia, Warsaw is savoring its newfound influence in NATO and on Ukraine policy.', 'Biden, Joseph R Jr, Morawiecki, Mateusz, Russia, Poland, Europe, Central Europe, North Atlantic Trea'),
(48, 9, 'https://www.nytimes.com/2023/02/21/world/asia/china-europe-russia-ukraine.html', 'China Tries to Mend Europe Ties Without Distancing Itself From Russia', '2023-02-21', 'Beijing, in urgent need of reviving its economy, wants to mend ties with Europe but is struggling to create distance between itself and Moscow.', 'Europe, China, Zelensky, Volodymyr, Xi Jinping, von der Leyen, Ursula, Borrell Fontelles, Josep, Bli'),
(49, 9, 'https://www.nytimes.com/2023/02/21/climate/california-storms-groundwater-aquifer-recharge.html', 'Parched California Misses a Chance to Store More Rain Underground', '2023-02-21', 'Torrential rains could have helped to replenish depleted aquifers, but some say state bureaucracy, designed to distribute water fairly, has stood in the way.', 'Sonoma County (Calif), San Joaquin Valley (Calif), Sacramento (Calif), Fresno County (Calif), Califo'),
(50, 9, 'https://www.nytimes.com/2023/02/21/world/europe/byd-germany-electric-cars.html', 'China’s Leading Electric Carmaker Has Arrived in Germany', '2023-02-22', 'BYD is a powerhouse in China and sells the most electric vehicles of any company in the world. Now it has a plan to attract buyers in Europe’s largest economy.', 'Volkswagen AG, Tesla Motors Inc, Sixt, Ford Motor Co, Build Your Dreams, Automobiles, China, Germany');

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
(9, 'https://www.nytimes.com/svc/collections/v1/publish/https://www.nytimes.com/section/world/rss.xml');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `sitiosweb`
--
ALTER TABLE `sitiosweb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
