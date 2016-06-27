function gest=recognise3(r)
    r
    relax_min=0;
    relax_max=0.40;
    finger_min=0.40;
    finger_max=0.40;
    thumb_min=0.40;
    thumb_max=0.85;
    fist_min=0.85;
    fist_max=2;
    pinch_threshold=2.5;
    %pinch_mean=1.2;
    tap_min=55;
    tap_max=88;
    tap_mean_max=0.6;
    tap_mean_min=0.4;
    gest=0;
    
    b=r>pinch_threshold;
    s=sum(b);
    m=mean(r);
    if s>0
         gest=5;
         return;
    end
    
    b=r>tap_min & r<tap_max;
    s=sum(b);
    if s<3 && m<tap_mean_max && m>tap_mean_min && s>0
         gest=6;
         return;
    end
    
    b=r>=relax_min & r<relax_max;
    s=sum(b);
    if s>3
         gest=1;
         return;
    end
    
    b=r>finger_min & r<finger_max;
    s=sum(b);
    if s>3
         gest=2;
         return;
    end
    
    b=r>thumb_min & r<thumb_max;
    s=sum(b);
    if s>3
         gest=3;
         return;
    end
    
    b=r>fist_min & r<fist_max;
    s=sum(b);
    if s>3
         gest=4;
         return;
    end
end