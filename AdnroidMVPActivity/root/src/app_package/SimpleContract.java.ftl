package ${packageName};

import java.util.List;

public interface ${activityClass}Contract {

    interface View extends IView {
        /**
         * 无网络连接
         */
        void showNetError();

         /**
         * 请求成功后返回的数据
         * 需要自己添加泛型
         * @param list 返回的数据
         */
        void showDate(List<> list);

    }
}