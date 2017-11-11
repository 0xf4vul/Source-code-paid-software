.class final Lcom/piriform/ccleaner/reminder/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/reminder/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/reminder/e;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/reminder/e;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/piriform/ccleaner/reminder/e$1;->a:Lcom/piriform/ccleaner/reminder/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/piriform/ccleaner/reminder/e$1;->a:Lcom/piriform/ccleaner/reminder/e;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/reminder/e;->g()Landroid/support/v4/app/i;

    move-result-object v0

    .line 26
    instance-of v1, v0, Lcom/piriform/ccleaner/reminder/e$a;

    if-eqz v1, :cond_0

    .line 27
    check-cast v0, Lcom/piriform/ccleaner/reminder/e$a;

    .line 28
    invoke-static {p2}, Lcom/piriform/ccleaner/reminder/a;->a(I)Lcom/piriform/ccleaner/reminder/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/reminder/e$a;->a(Lcom/piriform/ccleaner/reminder/a;)V

    .line 29
    iget-object v0, p0, Lcom/piriform/ccleaner/reminder/e$1;->a:Lcom/piriform/ccleaner/reminder/e;

    .line 1171
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/g;->a(Z)V

    .line 31
    :cond_0
    return-void
.end method
