.class public Lcom/piriform/ccleaner/reminder/ReminderNotifierService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field a:Lcom/piriform/ccleaner/reminder/b;

.field b:Lcom/piriform/ccleaner/reminder/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    .prologue
    const v9, 0x7f080245

    const/high16 v8, 0x8000000

    const/4 v7, 0x1

    .line 17
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/reminder/ReminderNotifierService;)V

    .line 18
    iget-object v0, p0, Lcom/piriform/ccleaner/reminder/ReminderNotifierService;->a:Lcom/piriform/ccleaner/reminder/b;

    .line 2031
    iget-object v1, v0, Lcom/piriform/ccleaner/reminder/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2032
    iget-object v2, v0, Lcom/piriform/ccleaner/reminder/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020104

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2080
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v0, Lcom/piriform/ccleaner/reminder/b;->a:Landroid/content/Context;

    const-class v5, Lcom/piriform/ccleaner/ui/activity/MainActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2081
    const-string/jumbo v4, "extra_start_analysis"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2082
    const-string/jumbo v4, "extra_notification_action"

    const-string/jumbo v5, "analysis"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2084
    const v4, 0x10008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2085
    iget-object v4, v0, Lcom/piriform/ccleaner/reminder/b;->a:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2035
    iget-object v4, v0, Lcom/piriform/ccleaner/reminder/b;->a:Landroid/content/Context;

    .line 3062
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/piriform/ccleaner/ui/activity/QuickCleanNotificationConfigurationActivity;

    invoke-direct {v5, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3063
    invoke-static {v4, v7, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2037
    new-instance v5, Landroid/support/v4/app/z$d;

    iget-object v6, v0, Lcom/piriform/ccleaner/reminder/b;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/z$d;-><init>(Landroid/content/Context;)V

    .line 3664
    iput v1, v5, Landroid/support/v4/app/z$d;->z:I

    .line 2038
    iget-object v1, v0, Lcom/piriform/ccleaner/reminder/b;->a:Landroid/content/Context;

    const v6, 0x7f080246

    .line 2039
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/support/v4/app/z$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$d;

    move-result-object v1

    iget-object v5, v0, Lcom/piriform/ccleaner/reminder/b;->a:Landroid/content/Context;

    .line 2040
    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v4/app/z$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$d;

    move-result-object v1

    new-instance v5, Landroid/support/v4/app/z$c;

    invoke-direct {v5}, Landroid/support/v4/app/z$c;-><init>()V

    iget-object v6, v0, Lcom/piriform/ccleaner/reminder/b;->a:Landroid/content/Context;

    .line 2041
    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/z$c;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$c;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v4/app/z$d;->a(Landroid/support/v4/app/z$q;)Landroid/support/v4/app/z$d;

    move-result-object v1

    const v5, 0x7f020111

    .line 2042
    invoke-virtual {v1, v5}, Landroid/support/v4/app/z$d;->a(I)Landroid/support/v4/app/z$d;

    move-result-object v1

    .line 4301
    iput-object v2, v1, Landroid/support/v4/app/z$d;->g:Landroid/graphics/Bitmap;

    .line 2044
    invoke-virtual {v1, v7}, Landroid/support/v4/app/z$d;->a(Z)Landroid/support/v4/app/z$d;

    move-result-object v1

    .line 5237
    iput-object v3, v1, Landroid/support/v4/app/z$d;->d:Landroid/app/PendingIntent;

    .line 2045
    const v2, 0x7f02007b

    iget-object v5, v0, Lcom/piriform/ccleaner/reminder/b;->a:Landroid/content/Context;

    const v6, 0x7f080243

    .line 2048
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2046
    invoke-virtual {v1, v2, v5, v3}, Landroid/support/v4/app/z$d;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/z$d;

    move-result-object v1

    const v2, 0x7f02011d

    iget-object v3, v0, Lcom/piriform/ccleaner/reminder/b;->a:Landroid/content/Context;

    const v5, 0x7f080244

    .line 2053
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2051
    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/z$d;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/z$d;

    move-result-object v1

    .line 2057
    invoke-virtual {v0}, Lcom/piriform/ccleaner/reminder/b;->a()Landroid/app/NotificationManager;

    move-result-object v0

    .line 2058
    invoke-virtual {v1}, Landroid/support/v4/app/z$d;->a()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 19
    iget-object v0, p0, Lcom/piriform/ccleaner/reminder/ReminderNotifierService;->b:Lcom/piriform/ccleaner/reminder/d;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/reminder/ReminderNotifierService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6037
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/piriform/ccleaner/reminder/d;->a:Lcom/piriform/ccleaner/n/a;

    invoke-virtual {v4, v1}, Lcom/piriform/ccleaner/n/a;->a(Landroid/content/res/Resources;)Lcom/piriform/ccleaner/reminder/a;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/piriform/ccleaner/reminder/d;->a(JLcom/piriform/ccleaner/reminder/a;)V

    .line 20
    const/4 v0, 0x2

    return v0
.end method
