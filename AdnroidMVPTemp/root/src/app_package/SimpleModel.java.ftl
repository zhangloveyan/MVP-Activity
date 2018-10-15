package ${packageName};

import android.support.annotation.NonNull;

import ${packageName}.api.Api;
import ${packageName}.mvp.contract.${activityClass}Contract;
import com.zyw.horrarndoo.sdk.base.BaseModel;
import com.zyw.horrarndoo.sdk.helper.RetrofitCreateHelper;
import com.zyw.horrarndoo.sdk.helper.RxHelper;

import io.reactivex.Observable;
import okhttp3.ResponseBody;

public class ${activityClass}Model extends BaseModel implements  ${activityClass}Contract.I${activityClass}Model {
 
	@NonNull
    public static ${activityClass}Model newInstance() {
        return new ${activityClass}Model();
    }
	
	 /**
     * 访问网络获取数据
     */
	 @Override
    public Observable<ResponseBody> getData() {
          return RetrofitCreateHelper.createApi(Api.class, Api.HOST).getData()
                .compose(RxHelper.<ResponseBody>rxSchedulerHelper());
    }
}