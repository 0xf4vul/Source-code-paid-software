.class final Lcom/google/android/gms/internal/fe$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fe$3;->a:Lcom/google/android/gms/internal/fe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fe$3;->a:Lcom/google/android/gms/internal/fe;

    iget-object v0, v0, Lcom/google/android/gms/internal/fe;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ud;->a(Landroid/content/Context;)V

    return-void
.end method
