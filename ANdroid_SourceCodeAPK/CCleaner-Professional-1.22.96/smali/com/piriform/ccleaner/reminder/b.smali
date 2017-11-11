.class public final Lcom/piriform/ccleaner/reminder/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/piriform/ccleaner/reminder/b;->a:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method final a()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/piriform/ccleaner/reminder/b;->a:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/piriform/ccleaner/reminder/b;->a()Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 77
    return-void
.end method
