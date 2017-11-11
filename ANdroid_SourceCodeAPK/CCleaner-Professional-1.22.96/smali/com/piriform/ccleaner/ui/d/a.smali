.class public final Lcom/piriform/ccleaner/ui/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/d/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/piriform/ccleaner/s/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/s/h;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/d/a;->a:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/d/a;->b:Lcom/piriform/ccleaner/s/h;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/d/a;->b()Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 66
    return-void
.end method

.method public final b()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/d/a;->a:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method
