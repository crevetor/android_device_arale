#include <stddef.h>
#ifndef status_t
typedef signed int          status_t;
#endif

#define NO_ERROR 0

namespace android {
class AudioSystem
{
	public:
		status_t SetAudioData(int par1, size_t len, void *ptr);
		status_t SetAudioCommand(int par1, int par2);
		status_t GetAudioCommand(int par1, int* ptr);
};
}
