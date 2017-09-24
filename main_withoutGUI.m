clear;
clc;
array = getList();

[category,pos] = unique({array.category});
[~,posSort] = sort(pos);
category = category(posSort);
for i = 1:length(category)
    fprintf('\t%d. %s\n',i,category{i});
end
choiceCategory = input('Choice of notebook type: ');
    [~,categoryPos] = find(strcmp({array.category},category{choiceCategory})==1);
    category_filter = array(categoryPos);
    brand = unique({category_filter.brand});
    if (length(brand) > 1)
        for i = 1:length(brand)
            fprintf('\t%d. %s\n',i,brand{i});
        end
        choiceBrand = input('Choice of brand: ');
    else
        choiceBrand = 1;
    end
    [~,brandPos] = find(strcmp({category_filter.brand},brand{choiceBrand})==1);
    brand_filter = category_filter(brandPos);
    
    cpu = unique({brand_filter.cpu});
    if (length(cpu) > 1)
        for i =1:length(cpu)
            fprintf('\t%d. %s\n',i,cpu{i});
        end
        choiceCpu = input('Choice of CPU: ');
    else
        choiceCpu = 1;
    end
    [~,cpuPos] = find(strcmp({brand_filter.cpu},cpu{choiceCpu})==1);
    cpu_filter = brand_filter(cpuPos);
    
    screensize = unique({cpu_filter.screensize});
    if (length(screensize) > 1)
         for i = 1:length(screensize)
            fprintf('\t%d. %s\n',i,screensize{i});
        end
        choiceSize = input('Choice of screen size: ');
    else
        choiceSize = 1;
    end
    [~,screensizePos] = find(strcmp({cpu_filter.screensize},screensize{choiceSize}) == 1);
    screensize_filter = cpu_filter(screensizePos);
    
    ram = unique({screensize_filter.ram});
    if (length(ram) > 1)
        for i = 1:length(ram)
            fprintf('\t%d. %s\n',i,ram{i});
        end
        choiceRam = input('Choice of ram: ');
    else
        choiceRam = 1;
    end
    [~,ramPos] = find(strcmp({screensize_filter.ram},ram{choiceRam}) == 1);
    ram_filter = screensize_filter(ramPos);
    
    gpu = unique({ram_filter.gpu});
    if (length(gpu) > 1)
        for i = 1:length(gpu)
            fprintf('\t%d. %s\n',i,gpu{i});
        end
        choiceGpu = input('Discrete graphics: ');
    else
        choiceGpu = 1;
    end
    [~,gpuPos] = find(strcmp({ram_filter.gpu},gpu{choiceGpu}) == 1);
    gpu_filter = ram_filter(gpuPos);
    
    storage = unique({gpu_filter.storage});
    if (length(storage) > 1)
        for i = 1:length(storage)
            fprintf('\t%d. %s\n',i,storage{i});
        end
        choiceStorage = input('Storage type: ');
    else
        choiceStorage = 1;
    end
    [~,storagePos] = find(strcmp({gpu_filter.storage},storage{choiceStorage}) == 1);
    storage_filter = gpu_filter(storagePos);
    
    capacity = unique({storage_filter.capacity});
    if (length(capacity) > 1)
        for i = 1:length(capacity)
            fprintf('\t%d. %s\n',i,capacity{i});
        end
        choiceCapacity = input('Storage capacity: ');
    else
        choiceCapacity = 1;
    end
    [~,capacityPos] = find(strcmp({storage_filter.capacity},capacity{choiceCapacity}) == 1);
    capacity_filter = storage_filter(capacityPos);
    
    resolution = unique({capacity_filter.resolution});
    if (length(resolution) > 1)
        for i = 1:length(resolution)
            fprintf('\t%d. %s\n',i,resolution{i});
        end
        choiceResolution = input('Choose resolution: ');
    else
        choiceResolution = 1;
    end
    [~,resolutionPos] = find(strcmp({capacity_filter.resolution},resolution{choiceResolution}) == 1);
    resolution_filter = capacity_filter(resolutionPos);
    
    price = unique({resolution_filter.price});
    if (length(price) > 1)
        for i = 1:length(price)
            fprintf('\t%d. %s\n',i,price{i});
        end
        choicePrice = input('Maximum budget: ');
    else
        choicePrice = 1;
    end
    [~,pricePos] = find(strcmp({resolution_filter.price},price{choicePrice}) == 1);
    price_filter = resolution_filter(choicePrice);