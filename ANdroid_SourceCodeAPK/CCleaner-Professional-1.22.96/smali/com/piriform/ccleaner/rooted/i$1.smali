.class final Lcom/piriform/ccleaner/rooted/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
.method constructor <init>(Lcom/piriform/ccleaner/rooted/i;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/piriform/ccleaner/rooted/i$1;->a:Lcom/piriform/ccleaner/rooted/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 50
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 51
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/i$1;->a:Lcom/piriform/ccleaner/rooted/i;

    invoke-static {v0}, Lcom/piriform/ccleaner/rooted/i;->a(Lcom/piriform/ccleaner/rooted/i;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 52
    return-void
.end method
