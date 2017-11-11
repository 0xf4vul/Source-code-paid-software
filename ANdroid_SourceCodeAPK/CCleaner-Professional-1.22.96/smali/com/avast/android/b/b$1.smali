.class final Lcom/avast/android/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avast/android/b/b;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/avast/android/b/b;


# direct methods
.method constructor <init>(Lcom/avast/android/b/b;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/avast/android/b/b$1;->a:Lcom/avast/android/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/avast/android/b/b$1;->a:Lcom/avast/android/b/b;

    .line 1021
    iget-object v0, v0, Lcom/avast/android/b/b;->c:Lcom/avast/android/b/a;

    .line 71
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/avast/android/b/b$1;->a:Lcom/avast/android/b/b;

    iget-object v2, v2, Lcom/avast/android/b/b;->b:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/avast/android/b/a;->a(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method
