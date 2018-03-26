package ${packageName};

import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import okhttp3.MediaType;
import okhttp3.RequestBody;


public class ${activityClass}Repository implements IModel {
 
	@Override
    public void onDestroy() {

    }
	
	 /**
     * 访问网络获取数据
     */
    public Observable<> getNetDate() {
        return HttpUtils.service
                .
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .unsubscribeOn(Schedulers.io());
    }
}