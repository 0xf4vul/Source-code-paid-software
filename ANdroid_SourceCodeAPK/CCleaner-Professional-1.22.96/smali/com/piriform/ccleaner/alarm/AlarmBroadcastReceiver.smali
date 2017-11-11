.class public Lcom/piriform/ccleaner/alarm/AlarmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field a:Lcom/piriform/ccleaner/alarm/c;

.field b:Landroid/content/Context;

.field private final c:Lcom/piriform/ccleaner/alarm/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    new-instance v0, Lcom/piriform/ccleaner/alarm/f;

    invoke-direct {v0}, Lcom/piriform/ccleaner/alarm/f;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/alarm/AlarmBroadcastReceiver;->c:Lcom/piriform/ccleaner/alarm/f;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.piriform.ccleaner.action.ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/alarm/AlarmBroadcastReceiver;)V

    .line 35
    :try_start_0
    invoke-static {p2}, Lcom/piriform/ccleaner/alarm/f;->a(Landroid/content/Intent;)Lcom/piriform/ccleaner/alarm/a;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/piriform/ccleaner/alarm/AlarmBroadcastReceiver;->a:Lcom/piriform/ccleaner/alarm/c;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/alarm/c;->b(Lcom/piriform/ccleaner/alarm/a;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to parse alarm from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
