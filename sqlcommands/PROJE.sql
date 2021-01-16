--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12rc1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Admin" (
    "KullaniciNo" integer NOT NULL
);


ALTER TABLE public."Admin" OWNER TO postgres;

--
-- Name: Adres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Adres" (
    "AdresNo" integer NOT NULL,
    "Ulke" text NOT NULL
);


ALTER TABLE public."Adres" OWNER TO postgres;

--
-- Name: Cesit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Cesit" (
    "CesitNo" integer NOT NULL,
    "CesitAdi" text NOT NULL
);


ALTER TABLE public."Cesit" OWNER TO postgres;

--
-- Name: Iletisim; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Iletisim" (
    "IletisimNo" integer NOT NULL,
    "Email" text NOT NULL,
    "AdresNo" integer NOT NULL,
    "TelefonNumarasi" integer NOT NULL
);


ALTER TABLE public."Iletisim" OWNER TO postgres;

--
-- Name: KrediKarti; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."KrediKarti" (
    "KrediKartiNo" integer NOT NULL,
    "KartCVV" integer NOT NULL
);


ALTER TABLE public."KrediKarti" OWNER TO postgres;

--
-- Name: Kullanici; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Kullanici" (
    "KullaniciNo" integer NOT NULL,
    "Sifre" text NOT NULL,
    "Ad" text NOT NULL,
    "Soyad" text NOT NULL,
    "IletisimNo" integer NOT NULL,
    "KrediKartiNo" integer NOT NULL,
    "KullaniciAdi" text NOT NULL
);


ALTER TABLE public."Kullanici" OWNER TO postgres;

--
-- Name: KullaniciRozeti; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."KullaniciRozeti" (
    "KullaniciNo" integer NOT NULL,
    "RozetNo" integer NOT NULL
);


ALTER TABLE public."KullaniciRozeti" OWNER TO postgres;

--
-- Name: Rozet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rozet" (
    "RozetNo" integer NOT NULL,
    "RozetTuru" text NOT NULL,
    "RozetAdi" text NOT NULL
);


ALTER TABLE public."Rozet" OWNER TO postgres;

--
-- Name: Sepet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Sepet" (
    "SepetNo" integer NOT NULL,
    "UyeNo" integer NOT NULL,
    "UrunNo" integer
);


ALTER TABLE public."Sepet" OWNER TO postgres;

--
-- Name: UrunAdi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UrunAdi" (
    "UrunAdiNo" integer NOT NULL,
    "UrunAdi" text NOT NULL,
    "UrunAdedi" integer NOT NULL,
    "UrunFiyati" integer NOT NULL
);


ALTER TABLE public."UrunAdi" OWNER TO postgres;

--
-- Name: Urunler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Urunler" (
    "UrunNo" integer NOT NULL,
    "UrunAdiNo" integer NOT NULL,
    "AdminNo" integer NOT NULL,
    "CesitNo" integer NOT NULL
);


ALTER TABLE public."Urunler" OWNER TO postgres;

--
-- Name: Uye; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Uye" (
    "KullaniciNo" integer NOT NULL
);


ALTER TABLE public."Uye" OWNER TO postgres;

--
-- Data for Name: Admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Admin" VALUES (4);


--
-- Data for Name: Adres; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Adres" VALUES (1, 'Turkiye');
INSERT INTO public."Adres" VALUES (2, 'Almanya');
INSERT INTO public."Adres" VALUES (3, 'Ingıltere');
INSERT INTO public."Adres" VALUES (4, 'Amerika');


--
-- Data for Name: Cesit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Cesit" VALUES (1, 'Teknolojik Alet');
INSERT INTO public."Cesit" VALUES (2, 'Dizayn');


--
-- Data for Name: Iletisim; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Iletisim" VALUES (2, 'mucahid@gmail.com', 2, 43214);
INSERT INTO public."Iletisim" VALUES (1, 'huseyin@gmail.com', 1, 123456);
INSERT INTO public."Iletisim" VALUES (3, 'celal@gmail.com', 4, 83212);
INSERT INTO public."Iletisim" VALUES (4, 'cabbar@gmail.com', 3, 123124);


--
-- Data for Name: KrediKarti; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."KrediKarti" VALUES (1, 123);
INSERT INTO public."KrediKarti" VALUES (2, 345);
INSERT INTO public."KrediKarti" VALUES (3, 678);
INSERT INTO public."KrediKarti" VALUES (4, 789);


--
-- Data for Name: Kullanici; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Kullanici" VALUES (1, '123', 'mucahid', 'isik', 2, 3, 'mucahidd');
INSERT INTO public."Kullanici" VALUES (2, '123', 'huseyin', 'hira', 1, 2, 'huseyinn');
INSERT INTO public."Kullanici" VALUES (3, '123', 'celal', 'ceken', 3, 1, 'celall');
INSERT INTO public."Kullanici" VALUES (4, '123', 'cabbar', 'akin', 4, 4, 'admin');


--
-- Data for Name: KullaniciRozeti; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."KullaniciRozeti" VALUES (1, 2);
INSERT INTO public."KullaniciRozeti" VALUES (2, 3);
INSERT INTO public."KullaniciRozeti" VALUES (3, 4);
INSERT INTO public."KullaniciRozeti" VALUES (4, 1);


--
-- Data for Name: Rozet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Rozet" VALUES (1, 'Altin', 'efsane');
INSERT INTO public."Rozet" VALUES (2, 'Altin', 'lider');
INSERT INTO public."Rozet" VALUES (3, 'Gumus', 'harika');
INSERT INTO public."Rozet" VALUES (4, 'Bronz', 'kasif');


--
-- Data for Name: Sepet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Sepet" VALUES (1, 1, 2);
INSERT INTO public."Sepet" VALUES (2, 2, 6);
INSERT INTO public."Sepet" VALUES (3, 3, 14);


--
-- Data for Name: UrunAdi; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."UrunAdi" VALUES (1, 'Laptop', 4, 7000);
INSERT INTO public."UrunAdi" VALUES (2, 'Telefon', 4, 3000);
INSERT INTO public."UrunAdi" VALUES (3, 'Tablo', 4, 150);
INSERT INTO public."UrunAdi" VALUES (4, 'Heykel', 4, 350);


--
-- Data for Name: Urunler; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Urunler" VALUES (1, 1, 4, 1);
INSERT INTO public."Urunler" VALUES (2, 1, 4, 1);
INSERT INTO public."Urunler" VALUES (3, 1, 4, 1);
INSERT INTO public."Urunler" VALUES (4, 1, 4, 1);
INSERT INTO public."Urunler" VALUES (5, 2, 4, 1);
INSERT INTO public."Urunler" VALUES (6, 2, 4, 1);
INSERT INTO public."Urunler" VALUES (7, 2, 4, 1);
INSERT INTO public."Urunler" VALUES (8, 2, 4, 1);
INSERT INTO public."Urunler" VALUES (9, 3, 4, 2);
INSERT INTO public."Urunler" VALUES (10, 3, 4, 2);
INSERT INTO public."Urunler" VALUES (11, 3, 4, 2);
INSERT INTO public."Urunler" VALUES (12, 3, 4, 2);
INSERT INTO public."Urunler" VALUES (13, 4, 4, 2);
INSERT INTO public."Urunler" VALUES (14, 4, 4, 2);
INSERT INTO public."Urunler" VALUES (15, 4, 4, 2);
INSERT INTO public."Urunler" VALUES (16, 4, 4, 2);


--
-- Data for Name: Uye; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Uye" VALUES (1);
INSERT INTO public."Uye" VALUES (2);
INSERT INTO public."Uye" VALUES (3);


--
-- Name: Admin Admin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Admin"
    ADD CONSTRAINT "Admin_pkey" PRIMARY KEY ("KullaniciNo");


--
-- Name: Adres Adres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Adres"
    ADD CONSTRAINT "Adres_pkey" PRIMARY KEY ("AdresNo");


--
-- Name: Cesit Cesit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cesit"
    ADD CONSTRAINT "Cesit_pkey" PRIMARY KEY ("CesitNo");


--
-- Name: Iletisim Iletisim_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Iletisim"
    ADD CONSTRAINT "Iletisim_pkey" PRIMARY KEY ("IletisimNo");


--
-- Name: KrediKarti KrediKarti_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KrediKarti"
    ADD CONSTRAINT "KrediKarti_pkey" PRIMARY KEY ("KrediKartiNo");


--
-- Name: KullaniciRozeti KullaniciRozeti_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KullaniciRozeti"
    ADD CONSTRAINT "KullaniciRozeti_pkey" PRIMARY KEY ("KullaniciNo", "RozetNo");


--
-- Name: Kullanici Kullanici_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kullanici"
    ADD CONSTRAINT "Kullanici_pkey" PRIMARY KEY ("KullaniciNo");


--
-- Name: Rozet Rozet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rozet"
    ADD CONSTRAINT "Rozet_pkey" PRIMARY KEY ("RozetNo");


--
-- Name: Sepet Sepet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sepet"
    ADD CONSTRAINT "Sepet_pkey" PRIMARY KEY ("SepetNo");


--
-- Name: UrunAdi UrunAdi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UrunAdi"
    ADD CONSTRAINT "UrunAdi_pkey" PRIMARY KEY ("UrunAdiNo");


--
-- Name: Urunler Urunler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Urunler"
    ADD CONSTRAINT "Urunler_pkey" PRIMARY KEY ("UrunNo");


--
-- Name: Uye Uye_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Uye"
    ADD CONSTRAINT "Uye_pkey" PRIMARY KEY ("KullaniciNo");


--
-- Name: Admin unique_Admin_KullaniciNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Admin"
    ADD CONSTRAINT "unique_Admin_KullaniciNo" UNIQUE ("KullaniciNo");


--
-- Name: Adres unique_Adres_AdresNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Adres"
    ADD CONSTRAINT "unique_Adres_AdresNo" UNIQUE ("AdresNo");


--
-- Name: Cesit unique_Cesit_CesitNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cesit"
    ADD CONSTRAINT "unique_Cesit_CesitNo" UNIQUE ("CesitNo");


--
-- Name: Iletisim unique_Iletisim_IletisimNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Iletisim"
    ADD CONSTRAINT "unique_Iletisim_IletisimNo" UNIQUE ("IletisimNo");


--
-- Name: KrediKarti unique_KrediKarti_KrediKartiNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KrediKarti"
    ADD CONSTRAINT "unique_KrediKarti_KrediKartiNo" UNIQUE ("KrediKartiNo");


--
-- Name: Kullanici unique_Kullanici_KullaniciNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kullanici"
    ADD CONSTRAINT "unique_Kullanici_KullaniciNo" UNIQUE ("KullaniciNo");


--
-- Name: Rozet unique_Rozet_RozetNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rozet"
    ADD CONSTRAINT "unique_Rozet_RozetNo" UNIQUE ("RozetNo");


--
-- Name: Sepet unique_Sepet_SepetNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sepet"
    ADD CONSTRAINT "unique_Sepet_SepetNo" UNIQUE ("SepetNo");


--
-- Name: UrunAdi unique_UrunAdi_UrunAdiNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UrunAdi"
    ADD CONSTRAINT "unique_UrunAdi_UrunAdiNo" UNIQUE ("UrunAdiNo");


--
-- Name: Urunler unique_Urunler_UrunNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Urunler"
    ADD CONSTRAINT "unique_Urunler_UrunNo" UNIQUE ("UrunNo");


--
-- Name: Uye unique_Uye_KullaniciNo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Uye"
    ADD CONSTRAINT "unique_Uye_KullaniciNo" UNIQUE ("KullaniciNo");


--
-- Name: index_AdminNo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_AdminNo" ON public."Urunler" USING btree ("AdminNo");


--
-- Name: index_AdresNo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_AdresNo" ON public."Iletisim" USING btree ("AdresNo");


--
-- Name: index_CesitNo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_CesitNo" ON public."Urunler" USING btree ("CesitNo");


--
-- Name: index_IletisimNo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_IletisimNo" ON public."Kullanici" USING btree ("IletisimNo");


--
-- Name: index_KrediKartiNo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_KrediKartiNo" ON public."Kullanici" USING btree ("KrediKartiNo");


--
-- Name: index_KullaniciNo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_KullaniciNo" ON public."KullaniciRozeti" USING btree ("KullaniciNo");


--
-- Name: index_RozetNo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_RozetNo" ON public."KullaniciRozeti" USING btree ("RozetNo");


--
-- Name: index_UrunAdiNo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_UrunAdiNo" ON public."Urunler" USING btree ("UrunAdiNo");


--
-- Name: index_UrunNo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_UrunNo" ON public."Sepet" USING btree ("UrunNo");


--
-- Name: index_UyeNo1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_UyeNo1" ON public."Sepet" USING btree ("UyeNo");


--
-- Name: Urunler AdminID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Urunler"
    ADD CONSTRAINT "AdminID" FOREIGN KEY ("AdminNo") REFERENCES public."Admin"("KullaniciNo");


--
-- Name: Admin AdminKullanici; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Admin"
    ADD CONSTRAINT "AdminKullanici" FOREIGN KEY ("KullaniciNo") REFERENCES public."Kullanici"("KullaniciNo") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Iletisim AdresID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Iletisim"
    ADD CONSTRAINT "AdresID" FOREIGN KEY ("AdresNo") REFERENCES public."Adres"("AdresNo");


--
-- Name: Urunler CesitID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Urunler"
    ADD CONSTRAINT "CesitID" FOREIGN KEY ("CesitNo") REFERENCES public."Cesit"("CesitNo");


--
-- Name: Kullanici IletisimID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kullanici"
    ADD CONSTRAINT "IletisimID" FOREIGN KEY ("IletisimNo") REFERENCES public."Iletisim"("IletisimNo");


--
-- Name: Kullanici KrediKartıID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kullanici"
    ADD CONSTRAINT "KrediKartıID" FOREIGN KEY ("KrediKartiNo") REFERENCES public."KrediKarti"("KrediKartiNo");


--
-- Name: Admin KullaniciID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Admin"
    ADD CONSTRAINT "KullaniciID" FOREIGN KEY ("KullaniciNo") REFERENCES public."Kullanici"("KullaniciNo");


--
-- Name: KullaniciRozeti KullaniciID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KullaniciRozeti"
    ADD CONSTRAINT "KullaniciID" FOREIGN KEY ("KullaniciNo") REFERENCES public."Kullanici"("KullaniciNo");


--
-- Name: Uye KullaniciID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Uye"
    ADD CONSTRAINT "KullaniciID" FOREIGN KEY ("KullaniciNo") REFERENCES public."Kullanici"("KullaniciNo");


--
-- Name: KullaniciRozeti RozetID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KullaniciRozeti"
    ADD CONSTRAINT "RozetID" FOREIGN KEY ("RozetNo") REFERENCES public."Rozet"("RozetNo");


--
-- Name: Urunler UrunAdiID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Urunler"
    ADD CONSTRAINT "UrunAdiID" FOREIGN KEY ("UrunAdiNo") REFERENCES public."UrunAdi"("UrunAdiNo");


--
-- Name: Sepet UrunID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sepet"
    ADD CONSTRAINT "UrunID" FOREIGN KEY ("UrunNo") REFERENCES public."Urunler"("UrunNo");


--
-- Name: Sepet UyeID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sepet"
    ADD CONSTRAINT "UyeID" FOREIGN KEY ("UyeNo") REFERENCES public."Uye"("KullaniciNo");


--
-- Name: Uye UyeKullanici; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Uye"
    ADD CONSTRAINT "UyeKullanici" FOREIGN KEY ("KullaniciNo") REFERENCES public."Kullanici"("KullaniciNo") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

