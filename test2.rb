a = [1,7,3,4,2,2,6,5,7,8,0,1,8]
b = [2,6,5,7,8,1,7,3,4,2,0,1,8,4,9,9,2,6,3]
c = [1,8,4,9,5,7,8,4,2,0]

def bucket_sort(arr)
buckets0=[]
buckets1=[]
buckets2=[]
buckets3=[]
buckets4=[]
buckets5=[]
buckets6=[]
buckets7=[]
buckets8=[]
buckets9=[]
buckets10=[]

arr.each do |arrs|

    if arrs==0
        buckets0 << arrs

    elsif arrs==1 
        buckets1 << arrs

    elsif arrs==2
       buckets2 << arrs
    
     elsif arrs==3 
    buckets3 << arrs

     elsif arrs==4
     buckets4 << arrs
        
     elsif arrs==5 
     buckets5<< arrs

     elsif arrs==6
     buckets6 << arrs
            
   elsif arrs==7 
    buckets7 << arrs

    elsif arrs==8
    buckets8 << arrs

    elsif arrs==9 
    buckets9 << arrs

    elsif arrs==10 
    buckets10 << arrs

    end

    for arrs in 0..10 do
        puts arr
    end
        

end

p bucket_sort(a)
p bucket_sort(b)
p bucket_sort(c)