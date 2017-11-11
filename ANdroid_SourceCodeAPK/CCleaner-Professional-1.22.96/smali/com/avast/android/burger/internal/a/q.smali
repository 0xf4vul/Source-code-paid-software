.class public Lcom/avast/android/burger/internal/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/avast/android/b/b;

.field protected final b:Lcom/avast/android/burger/b;


# direct methods
.method public constructor <init>(Lcom/avast/android/burger/b;Lcom/avast/android/b/b;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/avast/android/burger/internal/a/q;->b:Lcom/avast/android/burger/b;

    .line 36
    iput-object p2, p0, Lcom/avast/android/burger/internal/a/q;->a:Lcom/avast/android/b/b;

    .line 37
    return-void
.end method

.method public static a(Lcom/avast/android/burger/internal/config/a;)Lcom/avast/android/burger/b;
    .locals 1

    .prologue
    .line 60
    invoke-interface {p0}, Lcom/avast/android/burger/internal/config/a;->a()Lcom/avast/android/burger/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/avast/android/burger/internal/config/a;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/avast/android/burger/internal/config/b;

    iget-object v1, p0, Lcom/avast/android/burger/internal/a/q;->b:Lcom/avast/android/burger/b;

    invoke-direct {v0, v1}, Lcom/avast/android/burger/internal/config/b;-><init>(Lcom/avast/android/burger/b;)V

    return-object v0
.end method

.method public final b()Lcom/avast/android/b/b;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/avast/android/burger/internal/a/q;->a:Lcom/avast/android/b/b;

    return-object v0
.end method
