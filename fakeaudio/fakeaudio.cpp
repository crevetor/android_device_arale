#include "fakeaudio.h"

namespace android {
status_t AudioSystem::SetAudioData(int par1, size_t len, void *ptr)
{
    return NO_ERROR;
}

status_t AudioSystem::SetAudioCommand(int par1, int par2)
{
    return NO_ERROR;
}

status_t AudioSystem::GetAudioCommand(int par1, int * ptr)
{
    return NO_ERROR;
}
}
