.class public final Lcom/piriform/ccleaner/alarm/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/alarm/c;


# static fields
.field private static final a:J


# instance fields
.field private final b:Landroid/app/AlarmManager;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/piriform/ccleaner/alarm/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/piriform/ccleaner/alarm/e;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/piriform/ccleaner/alarm/f;

    invoke-direct {v0}, Lcom/piriform/ccleaner/alarm/f;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/alarm/e;->d:Lcom/piriform/ccleaner/alarm/f;

    .line 41
    iput-object p1, p0, Lcom/piriform/ccleaner/alarm/e;->c:Landroid/content/Context;

    .line 42
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/piriform/ccleaner/alarm/e;->b:Landroid/app/AlarmManager;

    .line 43
    return-void
.end method

.method private a(Lcom/piriform/ccleaner/alarm/a;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 83
    .line 4029
    :try_start_0
    iget-object v1, p1, Lcom/piriform/ccleaner/alarm/a;->d:Ljava/lang/String;

    .line 4098
    if-eqz v1, :cond_1

    .line 4099
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4100
    const-string/jumbo v2, "dataForRecipient"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4101
    if-eqz p2, :cond_0

    .line 4102
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    move-object p2, v0

    .line 5041
    :cond_1
    iget-object v0, p1, Lcom/piriform/ccleaner/alarm/a;->b:Lcom/piriform/ccleaner/alarm/d;

    .line 84
    check-cast v0, Lcom/piriform/ccleaner/alarm/g;

    .line 85
    iget-object v1, p0, Lcom/piriform/ccleaner/alarm/e;->c:Landroid/content/Context;

    .line 5064
    sget-object v2, Lcom/piriform/ccleaner/alarm/g$1;->a:[I

    invoke-virtual {v0}, Lcom/piriform/ccleaner/alarm/g;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 5075
    new-instance v0, Lcom/novoda/notils/b/a;

    const-string/jumbo v1, "unhandled alarm recipient!"

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Lcom/novoda/notils/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Not an alarm we can handle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 6021
    :pswitch_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/piriform/ccleaner/reminder/ReminderNotifierService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5056
    :goto_0
    if-eqz p2, :cond_2

    .line 5057
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5051
    :cond_2
    invoke-static {v0, v1}, Lcom/piriform/ccleaner/alarm/g;->a(Landroid/content/Intent;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/piriform/ccleaner/alarm/e;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 92
    :goto_1
    return-void

    .line 5069
    :pswitch_1
    invoke-static {v1}, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 5072
    :pswitch_2
    invoke-static {v1}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->a(Landroid/content/Context;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 90
    :catch_1
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Pending intent for alarm has been cancelled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 5064
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 33
    const-string/jumbo v0, "alarmIsLate"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "dataForRecipient"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/alarm/a;)V
    .locals 7

    .prologue
    .line 48
    iget-object v0, p0, Lcom/piriform/ccleaner/alarm/e;->c:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/piriform/ccleaner/alarm/f;->a(Lcom/piriform/ccleaner/alarm/a;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1045
    iget-object v0, p1, Lcom/piriform/ccleaner/alarm/a;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 2033
    iget-boolean v0, p1, Lcom/piriform/ccleaner/alarm/a;->c:Z

    .line 50
    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/piriform/ccleaner/alarm/e;->b:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/alarm/e;->b:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    sget-wide v4, Lcom/piriform/ccleaner/alarm/e;->a:J

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public final a(Lcom/piriform/ccleaner/alarm/d;)V
    .locals 6

    .prologue
    .line 61
    iget-object v0, p0, Lcom/piriform/ccleaner/alarm/e;->b:Landroid/app/AlarmManager;

    .line 3017
    new-instance v1, Lcom/piriform/ccleaner/alarm/a;

    new-instance v2, Ljava/util/Date;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/piriform/ccleaner/alarm/a;-><init>(Ljava/util/Date;Lcom/piriform/ccleaner/alarm/d;ZLjava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/piriform/ccleaner/alarm/e;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/piriform/ccleaner/alarm/f;->a(Lcom/piriform/ccleaner/alarm/a;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 62
    return-void
.end method

.method public final b(Lcom/piriform/ccleaner/alarm/a;)V
    .locals 1

    .prologue
    .line 66
    .line 3041
    iget-object v0, p1, Lcom/piriform/ccleaner/alarm/a;->b:Lcom/piriform/ccleaner/alarm/d;

    .line 66
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/alarm/e;->a(Lcom/piriform/ccleaner/alarm/d;)V

    .line 3078
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/alarm/e;->a(Lcom/piriform/ccleaner/alarm/a;Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public final c(Lcom/piriform/ccleaner/alarm/a;)V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string/jumbo v1, "alarmIsLate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/alarm/e;->a(Lcom/piriform/ccleaner/alarm/a;Landroid/os/Bundle;)V

    .line 75
    return-void
.end method
