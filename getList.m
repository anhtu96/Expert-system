function device_list = getList();
clear;
asus(1) = struct(...
    'brand','Asus',...    
    'category','Mainstream',...
    'name','Vivobook S510UA',...
    'cpu','Intel Core i3',...
    'cpuname','Intel Core i3 7100U',...
    'ram','4GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','no',...
    'gpuname','Intel HD 620',...
    'screensize','15.6"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/asuss510.jpg',...
    'price','12.180.000 VND');
asus(2) = struct(...
    'brand','Asus',...
    'category','Mainstream',...
    'name','Vivobook S510UA',...
    'cpu','Intel Core i5',...
    'cpuname','Intel Core i5 7200U',...
    'ram','4GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','no',...
    'gpuname','Intel HD 620',...
    'screensize','15.6"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/asuss510.jpg',...
    'price','13.580.000 VND');
asus(3) = struct(...
    'brand','Asus',...
    'category','Mainstream',...
    'name','Vivobook S510UQ',...
    'cpu','Intel Core i5',...
    'cpuname','Intel Core i5 7200U',...
    'ram','4GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','yes',...
    'gpuname','NVIDIA GeForce 940MX',...
    'screensize','15.6"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/asuss510.jpg',...
    'price','14.480.000 VND');
asus(4) = struct(...
    'brand','Asus',...
    'category','Ultrabook',...
    'name','Zenbook UX410UA-GV064',...
    'cpu','Intel Core i5',...
    'cpuname','Intel Core i5 7200U',...
    'ram','4GB',...
    'storage','HDD',...
    'capacity','500GB',...
    'gpu','no',...
    'gpuname','Intel HD 620',...
    'screensize','14"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/ux410.png',...
    'price','14.950.000 VND');
asus(5) = struct(...
    'brand','Asus',...
    'category','Ultrabook',...
    'name','Zenbook UX410UQ-GV066',...
    'cpu','Intel Core i5',...
    'cpuname','Intel Core i5 7200U',...
    'ram','4GB',...
    'storage','HDD',...
    'capacity','500GB',...
    'gpu','yes',...
    'gpuname','NVIDIA GeForce 940MX',...
    'screensize','14"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/ux410.png',...
    'price','16.490.000 VND');
asus(6) = struct(...
    'brand','Asus',...
    'category','Ultrabook',...
    'name','Zenbook UX510UX-CN204T',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7500U',...
    'ram','4GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','yes',...
    'gpuname','NVIDIA GeForce GTX950M',...
    'screensize','15.6"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/ux510.jpg',...
    'price','17.890.000 VND');
asus(7) = struct(...
    'brand','Asus',...
    'category','Gaming',...
    'name','ASUS GL553VD-FY175',...
    'cpu','Intel Core i5',...
    'cpuname','Intel Core i5 7300HQ',...
    'ram','8GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','yes',...
    'gpuname','NVIDIA GeForce GTX1050',...
    'screensize','15.6"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/gl553.jpg',...
    'price','20.450.000 VND');
asus(8) = struct(...
    'brand','Asus',...
    'category','Gaming',...
    'name','ASUS GL553VD-FY305',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7700HQ',...
    'ram','8GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','yes',...
    'gpuname','NVIDIA GeForce GTX1050',...
    'screensize','15.6"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/gl553.jpg',...
    'price','21.850.000 VND');
asus(9) = struct(...
    'brand','Asus',...
    'category','Premium Ultrabook',...
    'name','ASUS UX390UA',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7500U',...
    'ram','16GB',...
    'storage','SSD',...
    'capacity','512GB',...
    'gpu','no',...
    'gpuname','Intel HD 620',...
    'screensize','12.5"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/ux390.jpg',...
    'price','38.800.000 VND');
asus(10) = struct(...
    'brand','Asus',...
    'category','Premium Ultrabook',...
    'name','ASUS UX490UA',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7500U',...
    'ram','8GB',...
    'storage','SSD',...
    'capacity','512GB',...
    'gpu','no',...
    'gpuname','Intel HD 620',...
    'screensize','14"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/ux490.jpg',...
    'price','38.800.000 VND');

apple(1) = struct(...
    'brand','Apple',...
    'category','Premium Ultrabook',...
    'name','Macbook Pro Retina 13 with TouchBar',...
    'cpu','Intel Core i5',...
    'cpuname','Intel Core i5 7267U',...
    'ram','8GB',...
    'storage','SSD',...
    'capacity','256GB',...
    'gpu','no',...
    'gpuname','Intel Iris Plus 650',...
    'screensize','13.3"',...
    'resolution','Retina (2560x1600)',...
    'img','img/mbp13.jpg',...
    'price','43.900.000 VND');
apple(2) = struct(...
    'brand','Apple',...
    'category','Premium Ultrabook',...
    'name','Macbook Pro Retina 13 with TouchBar',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7567U',...
    'ram','8GB',...
    'storage','SSD',...
    'capacity','256GB',...
    'gpu','no',...
    'gpuname','Intel Iris Plus 650',...
    'screensize','13.3"',...
    'resolution','Retina (2560x1600)',...
    'img','img/mbp13.jpg',...
    'price','47.490.000 VND');
apple(3) = struct(...
    'brand','Apple',...
    'category','Premium Ultrabook',...
    'name','Macbook Pro Retina 15 with TouchBar',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7700HQ',...
    'ram','16GB',...
    'storage','SSD',...
    'capacity','256GB',...
    'gpu','yes',...
    'gpuname','AMD Radeon Pro 550',...
    'screensize','15.4',...
    'resolution','Retina (2880x1800)',...
    'img','img/mbp15.jpeg',...
    'price','55.490.000 VND');
apple(4) = struct(...
    'brand','Apple',...
    'category','Premium Ultrabook',...
    'name','Macbook Pro Retina 15 with TouchBar',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7700HQ',...
    'ram','16GB',...
    'storage','SSD',...
    'capacity','512GB',...
    'gpu','yes',...
    'gpuname','AMD Radeon Pro 550',...
    'screensize','15.4',...
    'resolution','Retina (2880x1800)',...
    'img','img/mbp15.jpeg',...
    'price','57.490.000 VND');
hp(1) = struct(...
    'brand','HP',...
    'category','Mainstream',...
    'name','HP Pavilion 14-bf015TU',...
    'cpu','Intel Core i3',...
    'cpuname','Intel Core i3 7100U',...
    'ram','4GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','no',...
    'gpuname','Intel HD 620',...
    'screensize','14"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/pavilion14.jpg',...
    'price','12.290.000 VND');
hp(2) = struct(...
    'brand','HP',...
    'category','Mainstream',...
    'name','HP Pavilion 14-bf018TU ',...
    'cpu','Intel Core i5',...
    'cpuname','Intel Core i5 7200U',...
    'ram','4GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','no',...
    'gpuname','Intel HD 620',...
    'screensize','14"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/pavilion14.jpg',...
    'price','14.290.000 VND');
hp(3) = struct(...
    'brand','HP',...
    'category','Mainstream',...
    'name','HP Pavilion 15-cc018TU ',...
    'cpu','Intel Core i5',...
    'cpuname','Intel Core i5 7200U',...
    'ram','4GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','no',...
    'gpuname','Intel HD 620',...
    'screensize','15.6"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/pavilion15.gif',...
    'price','14.790.000 VND');
hp(4) = struct(...
    'brand','HP',...
    'category','Mainstream',...
    'name','HP Pavilion 14-AL115TX ',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7500U',...
    'ram','4GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','yes',...
    'gpuname','NVIDIA GeForce 940MX',...
    'screensize','14"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/pavilion14.jpg',...
    'price','16.990.000 VND');
hp(5) = struct(...
    'brand','HP',...
    'category','Ultrabook',...
    'name','HP Envy 13-ad075TU',...
    'cpu','Intel Core i5',...
    'cpuname','Intel Core i5 7200U',...
    'ram','4GB',...
    'storage','SSD',...
    'capacity','256GB SSD',...
    'gpu','no',...
    'gpuname','Intel HD 620',...
    'screensize','13.3"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/envy13.png',...
    'price','20.990.000 VND');
hp(6) = struct(...
    'brand','HP',...
    'category','Ultrabook',...
    'name','HP Envy 13-ad074TU',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7500U',...
    'ram','8GB',...
    'storage','SSD',...
    'capacity','256GB SSD',...
    'gpu','no',...
    'gpuname','Intel HD 620',...
    'screensize','13.3"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/envy13.png',...
    'price','25.990.000 VND');
hp(7) = struct(...
    'brand','HP',...
    'category','Gaming',...
    'name','HP Omen 15T',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7700HQ',...
    'ram','8GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','yes',...
    'gpuname','NVIDIA GeForce GTX1050Ti',...
    'screensize','15.6"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/omen15.jpg',...
    'price','25.990.000 VND');
hp(8) = struct(...
    'brand','HP',...
    'category','Gaming',...
    'name','HP Omen 17T',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7700HQ',...
    'ram','8GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','yes',...
    'gpuname','NVIDIA GeForce GTX1060',...
    'screensize','17.3"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/omen17.jpg',...
    'price','31.990.000 VND');
hp(9) = struct(...
    'brand','HP',...
    'category','Mobile Workstation',...
    'name','HP Zbook 15G3',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 6820HQ',...
    'ram','8GB',...
    'storage','SSD',...
    'capacity','256GB SSD',...
    'gpu','yes',...
    'gpuname','NVIDIA Quadro M1000M',...
    'screensize','15.6"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/zbook15.jpg',...
    'price','53.500.000 VND');
hp(10) = struct(...
    'brand','HP',...
    'category','Mobile Workstation',...
    'name','HP Zbook Studio G3',...
    'cpu','Intel Xeon',...
    'cpuname','Intel Xeon 1505M-v5',...
    'ram','16GB',...
    'storage','SSD',...
    'capacity','256GB SSD',...
    'gpu','yes',...
    'gpuname','NVIDIA Quadro M1000M',...
    'screensize','15.6"',...
    'resolution','Full HD IPS (1920x1080)',...
    'img','img/zbookstudio.jpg',...
    'price','54.350.000 VND');
hp(11) = struct(...
    'brand','HP',...
    'category','Mobile Workstation',...
    'name','HP Zbook Studio G3',...
    'cpu','Intel Xeon',...
    'cpuname','Intel Xeon 1505M-v5',...
    'ram','16GB',...
    'storage','SSD',...
    'capacity','256GB SSD',...
    'gpu','yes',...
    'gpuname','NVIDIA Quadro M1000M',...
    'screensize','15.6"',...
    'resolution','HP DreamColor IPS 4K (3840x2160)',...
    'img','img/zbookstudio.jpg',...
    'price','57.800.000 VND');
hp(12) = struct(...
    'brand','HP',...
    'category','Premium Ultrabook',...
    'name','HP Spectre 13',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7500U',...
    'ram','8GB',...
    'storage','SSD',...
    'capacity','256GB SSD',...
    'gpu','no',...
    'gpuname','Intel HD 620',...
    'screensize','13.3"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/spectre13.jpg',...
    'price','35.990.000 VND');
hp(13) = struct(...
    'brand','HP',...
    'category','Premium Ultrabook',...
    'name','HP Spectre 13 x360',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7500U',...
    'ram','8GB',...
    'storage','SSD',...
    'capacity','256GB SSD',...
    'gpu','no',...
    'gpuname','Intel HD 620',...
    'screensize','13.3"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/spectrex360.jpg',...
    'price','38.990.000 VND');
dell(1) = struct(...
    'brand','Dell',...
    'category','Mainstream',...
    'name','Dell Inspiron 5567',...
    'cpu','Intel Core i3',...
    'cpuname','Intel Core i3 7100U',...
    'ram','4GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','no',...
    'gpuname','Intel HD 620',...
    'screensize','15.6"',...
    'resolution','HD',...
    'img','img/dell5567.jpg',...
    'price','11.100.000 VND');
dell(2) = struct(...
    'brand','Dell',...
    'category','Mainstream',...
    'name','Dell Inspiron 5567',...
    'cpu','Intel Core i5',...
    'cpuname','Intel Core i5 7200U',...
    'ram','4GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','no',...
    'gpuname','Intel HD 620',...
    'screensize','15.6"',...
    'resolution','HD',...
    'img','img/dell5567.jpg',...
    'price','13.590.000 VND');
dell(3) = struct(...
    'brand','Dell',...
    'category','Mainstream',...
    'name','Dell Inspiron 5567',...
    'cpu','Intel Core i5',...
    'cpuname','Intel Core i5 7200U',...
    'ram','4GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','yes',...
    'gpuname','AMD Radeon R7 M445',...
    'screensize','15.6"',...
    'resolution','HD',...
    'img','img/dell5567.jpg',...
    'price','15.900.000 VND');
dell(4) = struct(...
    'brand','Dell',...
    'category','Ultrabook',...
    'name','Dell Inspiron 7460-N4I5259W',...
    'cpu','Intel Core i5',...
    'cpuname','Intel Core i5 7200U',...
    'ram','4GB',...
    'storage','SSD',...
    'capacity','128GB SSD & 500GB HDD',...
    'gpu','yes',...
    'gpuname','NVIDIA GeForce 940MX',...
    'screensize','14"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/dell7460.jpg',...
    'price','19.990.000 VND');
dell(5) = struct(...
    'brand','Dell',...
    'category','Ultrabook',...
    'name','Dell Inspiron 7460-338KP1',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7500U',...
    'ram','8GB',...
    'storage','SSD',...
    'capacity','128GB SSD & 1TB HDD',...
    'gpu','yes',...
    'gpuname','NVIDIA GeForce 940MX',...
    'screensize','14"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/dell7460.jpg',...
    'price','23.990.000 VND');
dell(6) = struct(...
    'brand','Dell',...
    'category','Gaming',...
    'name','Alienware 15R3',...
    'cpu','Intel Core i5',...
    'cpuname','Intel Core i5 7300HQ',...
    'ram','8GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','yes',...
    'gpuname','NVIDIA GeForce GTX1060',...
    'screensize','15.6"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/aw15.jpg',...
    'price','35.490.000 VND');
dell(7) = struct(...
    'brand','Dell',...
    'category','Gaming',...
    'name','Alienware 15R3',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7700HQ',...
    'ram','8GB',...
    'storage','HDD',...
    'capacity','1TB',...
    'gpu','yes',...
    'gpuname','NVIDIA GeForce GTX1060',...
    'screensize','15.6"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/aw15.jpg',...
    'price','38.900.000 VND');
dell(8) = struct(...
    'brand','Dell',...
    'category','Gaming',...
    'name','Alienware 15R3',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7700HQ',...
    'ram','16GB',...
    'storage','SSD',...
    'capacity','128GB SSD & 1TB HDD',...
    'gpu','yes',...
    'gpuname','NVIDIA GeForce GTX1080',...
    'screensize','15.6"',...
    'resolution','Quad HD (2560x1440) - 120Hz Refresh Rate',...
    'img','img/aw15.jpg',...
    'price','64.990.000 VND');
dell(9) = struct(...
    'brand','Dell',...
    'category','Mobile Workstation',...
    'name','Dell Precision 7510',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 6820HQ',...
    'ram','8GB',...
    'storage','SSD',...
    'capacity','256GB SSD',...
    'gpu','yes',...
    'gpuname','NVIDIA Quadro M1000M',...
    'screensize','15.6"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/dell7510.jpg',...
    'price','43.790.000 VND');
dell(10) = struct(...
    'brand','Dell',...
    'category','Mobile Workstation',...
    'name','Dell Precision 7510',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 6820HQ',...
    'ram','8GB',...
    'storage','SSD',...
    'capacity','256GB SSD',...
    'gpu','yes',...
    'gpuname','NVIDIA Quadro M1000M',...
    'screensize','15.6"',...
    'resolution','Sharp IGZO 4K (3840x2160)',...
    'img','img/dell7510.jpg',...
    'price','50.999.000 VND');
dell(11) = struct(...
    'brand','Dell',...
    'category','Mobile Workstation',...
    'name','Dell Precision 7510',...
    'cpu','Intel Xeon',...
    'cpuname','Intel Xeon 1505M v5',...
    'ram','16GB',...
    'storage','SSD',...
    'capacity','256GB SSD',...
    'gpu','yes',...
    'gpuname','NVIDIA Quadro M1000M',...
    'screensize','15.6"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/dell7510.jpg',...
    'price','46.380.000 VND');
dell(12) = struct(...
    'brand','Dell',...
    'category','Premium Ultrabook',...
    'name','Dell XPS 13 9360',...
    'cpu','Intel Core i5',...
    'cpuname','Intel Core i5 7200U',...
    'ram','8GB',...
    'storage','SSD',...
    'capacity','256GB SSD',...
    'gpu','no',...
    'gpuname','Intel HD 620',...
    'screensize','13.3"',...
    'resolution','Full HD (1920x1080)',...
    'img','img/dellxps.jpg',...
    'price','31.990.000 VND');
dell(13) = struct(...
    'brand','Dell',...
    'category','Premium Ultrabook',...
    'name','Dell XPS 13 9360',...
    'cpu','Intel Core i7',...
    'cpuname','Intel Core i7 7500U',...
    'ram','8GB',...
    'storage','SSD',...
    'capacity','256GB SSD',...
    'gpu','no',...
    'gpuname','Intel HD 620',...
    'screensize','13.3"',...
    'resolution','Sharp IGZO QHD+ (3200x1800)',...
    'img','img/dellxps.jpg',...
    'price','40.599.000 VND');
device_list = [asus apple hp dell];