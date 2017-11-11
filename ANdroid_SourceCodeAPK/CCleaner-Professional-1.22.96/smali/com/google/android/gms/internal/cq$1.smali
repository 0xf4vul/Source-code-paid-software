.class final Lcom/google/android/gms/internal/cq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cq;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/internal/cq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cq;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/cq$1;->c:Lcom/google/android/gms/internal/cq;

    iput-object p2, p0, Lcom/google/android/gms/internal/cq$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/cq$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/cq$1;->c:Lcom/google/android/gms/internal/cq;

    iget-object v1, p0, Lcom/google/android/gms/internal/cq$1;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/cq$1;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cq;->a(Lcom/google/android/gms/internal/cq;Ljava/lang/String;J)V

    return-void
.end method
