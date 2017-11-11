.class public final Lcom/avast/android/burger/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/android/burger/internal/a$a;
    }
.end annotation


# static fields
.field public static volatile g:Lcom/avast/android/burger/internal/a;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/avast/android/burger/internal/config/a;

.field c:Lcom/avast/android/burger/internal/b/c;

.field public d:Lcom/avast/android/b/b;

.field public e:Lcom/avast/android/burger/internal/c/i;

.field public f:Lcom/avast/android/burger/b/b;

.field public final h:Lcom/avast/android/b/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Lcom/avast/android/burger/internal/a/p;->a()Lcom/avast/android/burger/internal/a/k;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/avast/android/burger/internal/a/k;->a(Lcom/avast/android/burger/internal/a;)V

    .line 86
    new-instance v0, Lcom/avast/android/burger/internal/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avast/android/burger/internal/a$a;-><init>(Lcom/avast/android/burger/internal/a;B)V

    iput-object v0, p0, Lcom/avast/android/burger/internal/a;->h:Lcom/avast/android/b/a;

    .line 87
    iget-object v0, p0, Lcom/avast/android/burger/internal/a;->d:Lcom/avast/android/b/b;

    iget-object v1, p0, Lcom/avast/android/burger/internal/a;->h:Lcom/avast/android/b/a;

    invoke-virtual {v0, v1}, Lcom/avast/android/b/b;->a(Lcom/avast/android/b/a;)V

    .line 88
    return-void
.end method
