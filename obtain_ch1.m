function r=obtain_ch1()
    r(5)=0;
    j=1;
    while(j<=5)
        a=audiorecorder();
        record(a);
        pause(0.18);
        b=getaudiodata(a);
        b_filt=filt(b);
        r(j)=rms(b_filt*100);
        j=j+1;
    end
end