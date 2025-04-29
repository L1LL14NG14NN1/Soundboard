import SwiftUI

struct SoundPadView: View {

    var body: some View {
        /*#-code-walkthrough(1.exploreLoop)*/Beats {
            LoopButton(beat: .CosmicBeat, color: /*#-code-walkthrough(1.changeColor)*/ .teal /*#-code-walkthrough(1.changeColor)*/)
            LoopButton(beat: .HotBeat1, color: .cyan)
            LoopButton(beat: .GlowBeat, color: .indigo)
            LoopButton(beat: .CosmicBeat, color: .mint)
            //#-learning-code-snippet(1.addNewBeat)
        }/*#-code-walkthrough(1.exploreLoop)*/
        /*#-code-walkthrough(3.exploreBass)*/
        Bass {
            /*#-code-walkthrough(3.editSoundLook)*/
            LoopButton(bass: .CosmicBass, color: .gray)
            /*#-code-walkthrough(3.editSoundLook)*/
            LoopButton(bass: .PrismaticaBass7 , color: .brown)
                .filter(.drumsBitBrush)

        }
        /*#-code-walkthrough(3.exploreBass)*/
        /*#-code-walkthrough(3.exploreMelody)*/
        Melodic {
            LoopButton(melodic: .DreamsChords3, color: .teal)
            LoopButton(melodic: .GlowChords, color: .green)
             .pitch(.E)
        }
        /*#-code-walkthrough(3.exploreMelody)*/
        /*#-code-walkthrough(3.exploreAmbient)*/
        Ambient {
            LoopButton(ambient: .DiscoSynth1, color: .red)
            LoopButton(ambient: .GlitterSynth, color: .pink)
            LoopButton(ambient: .SolarisString, color: .yellow)
                .speed(0.5)

        }
        /*#-code-walkthrough(3.exploreAmbient)*/
        /*#-code-walkthrough(4.exploreSoundFX)*/
        SoundFX {
            /*#-code-walkthrough(4.SoundFXExplain)*/
            SoundFXButton(sound: .PlanetariumFX3, color: .green)
            SoundFXButton(sound: .FirstGearFX, color: .teal)
            SoundFXButton(sound: .HornBassFX, color: .orange)
            SoundFXButton(sound: .KazooFX4, color: .indigo)
                .volume(0.5)
                .speed(2)

            /*#-code-walkthrough(4.SoundFXExplain)*/
        }
        /*#-code-walkthrough(3.exploreSoundFX)*/
    }
}
