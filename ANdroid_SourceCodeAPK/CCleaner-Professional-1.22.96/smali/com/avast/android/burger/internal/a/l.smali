.class public Lcom/avast/android/burger/internal/a/l;
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
    iput-object p1, p0, Lcom/avast/android/burger/internal/a/l;->a:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/avast/android/burger/b/b;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/avast/android/burger/b/a;

    invoke-direct {v0, p0}, Lcom/avast/android/burger/b/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a()Lcom/avast/android/burger/internal/b/c;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/avast/android/burger/internal/b/a;

    invoke-direct {v0}, Lcom/avast/android/burger/internal/b/a;-><init>()V

    return-object v0
.end method
