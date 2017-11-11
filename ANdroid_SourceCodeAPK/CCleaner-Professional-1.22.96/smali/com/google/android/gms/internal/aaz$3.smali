.class final Lcom/google/android/gms/internal/aaz$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/aaz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/xh;Lcom/google/android/gms/internal/aay;Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzmn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/aay;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/android/gms/internal/abb;

.field final synthetic d:Lcom/google/android/gms/internal/zzmk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aay;Landroid/content/Context;Lcom/google/android/gms/internal/abb;Lcom/google/android/gms/internal/zzmk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aaz$3;->a:Lcom/google/android/gms/internal/aay;

    iput-object p2, p0, Lcom/google/android/gms/internal/aaz$3;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/aaz$3;->c:Lcom/google/android/gms/internal/abb;

    iput-object p4, p0, Lcom/google/android/gms/internal/aaz$3;->d:Lcom/google/android/gms/internal/zzmk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/aaz$3;->a:Lcom/google/android/gms/internal/aay;

    iget-object v0, v0, Lcom/google/android/gms/internal/aay;->e:Lcom/google/android/gms/internal/abh;

    iget-object v1, p0, Lcom/google/android/gms/internal/aaz$3;->c:Lcom/google/android/gms/internal/abb;

    iget-object v2, p0, Lcom/google/android/gms/internal/aaz$3;->d:Lcom/google/android/gms/internal/zzmk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmk;->k:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/abh;->a(Lcom/google/android/gms/internal/abb;)V

    return-void
.end method
