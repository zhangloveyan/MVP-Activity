package ${packageName};

import com.zyw.horrarndoo.sdk.base.BasePresenter;
import com.zyw.horrarndoo.sdk.base.IBaseActivity;
import com.zyw.horrarndoo.sdk.base.IBaseModel;

import io.reactivex.Observable;
import okhttp3.ResponseBody;

public interface ${activityClass}Contract {

	abstract class Abstract${activityClass}Presenter extends BasePresenter<I${activityClass}Model, I${activityClass}View> {
		/**
         * 加载数据
         */
        public abstract void loadData();
    }
	
	interface I${activityClass}Model extends IBaseModel {
        /**
         * 获取数据
         */
        Observable<ResponseBody> getData();
    }
	
    interface I${activityClass}View extends IBaseActivity {
        /**
         * 显示网络错误
         */
        void showNetworkError();

        /**
         * 展示数据
         *
         * @param body 数据
         */
        void showData(ResponseBody body);
    }
}