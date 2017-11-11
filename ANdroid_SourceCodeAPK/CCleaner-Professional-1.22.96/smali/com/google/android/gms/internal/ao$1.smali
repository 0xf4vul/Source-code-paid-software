.class final Lcom/google/android/gms/internal/ao$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ao;->a(Lcom/google/android/gms/internal/zzbaw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzbaw;

.field final synthetic b:Lcom/google/android/gms/internal/ao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ao;Lcom/google/android/gms/internal/zzbaw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ao$1;->b:Lcom/google/android/gms/internal/ao;

    iput-object p2, p0, Lcom/google/android/gms/internal/ao$1;->a:Lcom/google/android/gms/internal/zzbaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ao$1;->b:Lcom/google/android/gms/internal/ao;

    iget-object v1, p0, Lcom/google/android/gms/internal/ao$1;->a:Lcom/google/android/gms/internal/zzbaw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ao;->a(Lcom/google/android/gms/internal/ao;Lcom/google/android/gms/internal/zzbaw;)V

    return-void
.end method
