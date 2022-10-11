# sample usage: playback_capture_headset.sh
VOCALTRACT=$1

echo "enabling headset mic"

       tinymix 'TX DEC0 MUX' 'SWR_MIC'
        tinymix 'ADC2 ChMap' 'SWRM_TX2_CH2'
        tinymix 'TX SMIC MUX0' 'SWR_MIC5'
        tinymix 'TX_CDC_DMA_TX_3 Channels' 'One'
        tinymix 'TX_AIF1_CAP Mixer DEC0' 1
        tinymix 'ADC2_MIXER Switch' 1
        tinymix 'HDR12 MUX' 'NO_HDR12'
        tinymix 'ADC2 MUX' 'INP2'
        tinymix 'TX1 MODE' 'ADC_LP'
        tinymix 'DEC0 MODE' 'ADC_DEFAULT'

tinymix 'MultiMedia1 Mixer TX_CDC_DMA_TX_3' 1
tinymix 'TX_CDC_DMA_TX_3 SampleRate' KHZ_48

# start recording
tinycap /data/test1_$VOCALTRACT.wav -r 48000 -b 16 -T 6 &
sleep 6

echo "disabling headset mic"
        tinymix 'ADC2 ChMap' 'ZERO'
        tinymix 'TX DEC0 MUX' 'ZERO'
        tinymix 'TX SMIC MUX0' 'ZERO'
        tinymix 'TX_CDC_DMA_TX_3 Channels' 'One'
        tinymix 'TX_AIF1_CAP Mixer DEC0' 0
        tinymix 'ADC2_MIXER Switch' 0
        tinymix 'ADC2 MUX' 'ZERO'
        tinymix 'TX1 MODE' 'ADC_INVALID'


tinymix 'MultiMedia1 Mixer TX_CDC_DMA_TX_3' 0
tinymix 'TX_CDC_DMA_TX_3 SampleRate' 'KHZ_48'

