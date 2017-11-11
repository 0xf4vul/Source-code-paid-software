.class public Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field a:Lcom/piriform/ccleaner/alarm/c;

.field b:Lcom/piriform/ccleaner/b/e;

.field c:Lcom/piriform/ccleaner/s/h;

.field private d:Lcom/piriform/ccleaner/widget/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    sget-object v0, Lcom/piriform/ccleaner/widget/b;->c:Lcom/piriform/ccleaner/widget/b;

    iput-object v0, p0, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->d:Lcom/piriform/ccleaner/widget/b;

    .line 65
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;)V

    .line 66
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/piriform/ccleaner/widget/b;->d:Lcom/piriform/ccleaner/widget/b;

    invoke-static {p0, v0}, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->a(Landroid/content/Context;Lcom/piriform/ccleaner/widget/b;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/piriform/ccleaner/widget/b;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string/jumbo v1, "STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string/jumbo v1, "state"

    .line 1029
    iget-object v2, p1, Lcom/piriform/ccleaner/widget/b;->e:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    return-object v0
.end method

.method private a()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 95
    .line 1126
    invoke-virtual {p0}, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1127
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    .line 1128
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/piriform/ccleaner/widget/QuickCleanAppWidgetProvider;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1130
    iget-object v0, p0, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->b:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v3, "update_widget_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v5

    .line 1135
    array-length v6, v5

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_1

    aget v7, v5, v3

    .line 1136
    invoke-direct {p0, v4, v7}, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->a(Landroid/appwidget/AppWidgetManager;I)Z

    move-result v0

    .line 1137
    if-eqz v0, :cond_0

    const v0, 0x7f03007a

    .line 1153
    :goto_1
    new-instance v8, Landroid/widget/RemoteViews;

    const-string/jumbo v2, "com.piriform.ccleaner"

    invoke-direct {v8, v2, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1157
    sget-object v0, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService$1;->a:[I

    iget-object v2, p0, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->d:Lcom/piriform/ccleaner/widget/b;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/widget/b;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1168
    const v0, 0x7f08013a

    .line 2200
    invoke-virtual {p0}, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 2201
    sget-object v9, Lcom/piriform/ccleaner/cleaning/e;->a:Lcom/piriform/ccleaner/cleaning/e;

    invoke-static {v2, v9}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->a(Landroid/content/Context;Lcom/piriform/ccleaner/cleaning/e;)Landroid/content/Intent;

    move-result-object v9

    .line 3061
    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    invoke-static {v2, v10, v9, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2202
    const v9, 0x7f10013a

    invoke-virtual {v8, v9, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move v2, v0

    move v0, v1

    .line 1173
    :goto_2
    const v9, 0x7f10013b

    invoke-virtual {p0, v2}, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1174
    const v2, 0x7f100138

    if-eqz v0, :cond_2

    move v0, v1

    :goto_3
    invoke-virtual {v8, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1142
    invoke-virtual {v4, v7, v8}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 1135
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1137
    :cond_0
    const v0, 0x7f03007b

    goto :goto_1

    .line 1159
    :pswitch_0
    const v0, 0x7f080139

    move v2, v0

    move v0, v1

    .line 1160
    goto :goto_2

    .line 1162
    :pswitch_1
    const v2, 0x7f080138

    .line 1163
    const/4 v0, 0x1

    .line 2117
    invoke-virtual {p0}, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/high16 v12, 0x8000000

    .line 2116
    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1196
    const v10, 0x7f10013a

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/RemoteException;

    if-nez v1, :cond_1

    .line 1148
    iget-object v1, p0, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->b:Lcom/piriform/ccleaner/b/e;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/Throwable;)V

    .line 97
    :cond_1
    sget-object v0, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService$1;->a:[I

    iget-object v1, p0, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->d:Lcom/piriform/ccleaner/widget/b;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/widget/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 107
    new-instance v0, Lcom/novoda/notils/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Case not implemented: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->d:Lcom/piriform/ccleaner/widget/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1174
    :cond_2
    const/4 v0, 0x4

    goto :goto_3

    .line 3112
    :pswitch_2
    iget-object v0, p0, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->a:Lcom/piriform/ccleaner/alarm/c;

    sget-object v1, Lcom/piriform/ccleaner/alarm/g;->c:Lcom/piriform/ccleaner/alarm/g;

    invoke-static {v1}, Lcom/piriform/ccleaner/alarm/a;->a(Lcom/piriform/ccleaner/alarm/d;)Lcom/piriform/ccleaner/alarm/a$a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    .line 4082
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Lcom/piriform/ccleaner/alarm/a$a;->a(Ljava/util/Date;)Lcom/piriform/ccleaner/alarm/a$a;

    move-result-object v1

    .line 3112
    invoke-virtual {v1}, Lcom/piriform/ccleaner/alarm/a$a;->a()Lcom/piriform/ccleaner/alarm/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/alarm/c;->a(Lcom/piriform/ccleaner/alarm/a;)V

    .line 105
    :goto_4
    :pswitch_3
    return-void

    .line 104
    :pswitch_4
    invoke-virtual {p0}, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->stopSelf()V

    goto :goto_4

    .line 1157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 97
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private a(Landroid/appwidget/AppWidgetManager;I)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->c:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v1}, Lcom/piriform/ccleaner/s/h;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 190
    const-string/jumbo v2, "appWidgetCategory"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 191
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/widget/b;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/widget/b;

    move-result-object v0

    .line 1090
    iput-object v0, p0, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->d:Lcom/piriform/ccleaner/widget/b;

    .line 1091
    invoke-direct {p0}, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->a()V

    .line 80
    sget-object v1, Lcom/piriform/ccleaner/widget/b;->c:Lcom/piriform/ccleaner/widget/b;

    if-ne v0, v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->stopSelf()V

    .line 86
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 84
    :cond_1
    invoke-direct {p0}, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->a()V

    goto :goto_0
.end method
