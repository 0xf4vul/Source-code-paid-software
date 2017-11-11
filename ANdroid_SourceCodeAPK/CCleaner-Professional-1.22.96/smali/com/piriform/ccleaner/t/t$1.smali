.class final Lcom/piriform/ccleaner/t/t$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/t/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/t/t;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/t/t;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/piriform/ccleaner/t/t$1;->a:Lcom/piriform/ccleaner/t/t;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    iget-object v0, p0, Lcom/piriform/ccleaner/t/t$1;->a:Lcom/piriform/ccleaner/t/t;

    const-string/jumbo v1, "temperature"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    .line 1009
    iput v1, v0, Lcom/piriform/ccleaner/t/t;->b:F

    .line 23
    iget-object v0, p0, Lcom/piriform/ccleaner/t/t$1;->a:Lcom/piriform/ccleaner/t/t;

    const-string/jumbo v1, "scale"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2009
    iput v1, v0, Lcom/piriform/ccleaner/t/t;->c:I

    .line 24
    iget-object v0, p0, Lcom/piriform/ccleaner/t/t$1;->a:Lcom/piriform/ccleaner/t/t;

    const-string/jumbo v1, "level"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    .line 3009
    iput v1, v0, Lcom/piriform/ccleaner/t/t;->d:F

    .line 26
    return-void
.end method
