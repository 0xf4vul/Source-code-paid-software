.class public final Lcom/google/android/gms/internal/tk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/tk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/internal/tk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/tk;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/tk$1;->b:Lcom/google/android/gms/internal/tk;

    iput-object p2, p0, Lcom/google/android/gms/internal/tk$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/tk$1;->b:Lcom/google/android/gms/internal/tk;

    iget-object v1, p0, Lcom/google/android/gms/internal/tk$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tk;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/b;

    return-void
.end method
