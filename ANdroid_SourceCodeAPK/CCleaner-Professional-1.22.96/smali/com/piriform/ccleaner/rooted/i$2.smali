.class final Lcom/piriform/ccleaner/rooted/i$2;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/rooted/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/rooted/i;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/rooted/i;JJ)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/piriform/ccleaner/rooted/i$2;->a:Lcom/piriform/ccleaner/rooted/i;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/i$2;->a:Lcom/piriform/ccleaner/rooted/i;

    invoke-static {v0}, Lcom/piriform/ccleaner/rooted/i;->c(Lcom/piriform/ccleaner/rooted/i;)V

    .line 84
    return-void
.end method

.method public final onTick(J)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/i$2;->a:Lcom/piriform/ccleaner/rooted/i;

    invoke-static {v0}, Lcom/piriform/ccleaner/rooted/i;->b(Lcom/piriform/ccleaner/rooted/i;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/rooted/i$2;->a:Lcom/piriform/ccleaner/rooted/i;

    invoke-static {v1, p1, p2}, Lcom/piriform/ccleaner/rooted/i;->a(Lcom/piriform/ccleaner/rooted/i;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method
