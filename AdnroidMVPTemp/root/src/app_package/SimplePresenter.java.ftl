package ${packageName};

import android.support.annotation.NonNull;

import ${packageName}.mvp.contract.${activityClass}Contract;
import ${packageName}.mvp.model.${activityClass}Model;

import io.reactivex.functions.Consumer;
import okhttp3.ResponseBody;

public class ${activityClass}Presenter extends ${activityClass}Contract.Abstract${activityClass}Presenter {

    @NonNull
    public static ${activityClass}Presenter newInstance() {
        return new ${activityClass}Presenter();
    }

    @Override
    protected ${activityClass}Contract.I${activityClass}Model getModel() {
        return new ${activityClass}Model();
    }

    @Override
    public void onStart() {

    }

    @Override
    public void loadData() {
		if (mIView == null || mIModel == null) {
            return;
        }

        mRxManager.register(mIModel.getData().subscribe(new Consumer<ResponseBody>() {
            @Override
            public void accept(ResponseBody bean) throws Exception {
                if (mIView == null) {
                    return;
                }
				// 数据解析
				
				
                mIView.showData(bean);
            }
        }, new Consumer<Throwable>() {
            @Override
            public void accept(Throwable throwable) throws Exception {
                if (mIView == null) {
                    return;
                }
                mIView.showToast("Network error.");
                mIView.showNetworkError();
            }
        }));
    }
}