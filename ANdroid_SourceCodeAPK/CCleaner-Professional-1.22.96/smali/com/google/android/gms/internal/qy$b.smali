.class public final Lcom/google/android/gms/internal/qy$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/rg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/qy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/vb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/qy$b;->a:Lcom/google/android/gms/internal/vb;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qy$b;->a:Lcom/google/android/gms/internal/vb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qy$b;->a:Lcom/google/android/gms/internal/vb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vb;->e()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qy$b;->a:Lcom/google/android/gms/internal/vb;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/internal/rg;
    .locals 0

    return-object p0
.end method
