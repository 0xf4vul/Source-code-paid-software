.class final Lcom/google/android/gms/internal/dz$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/gms/internal/dz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dz;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dz$3;->b:Lcom/google/android/gms/internal/dz;

    iput-wide p2, p0, Lcom/google/android/gms/internal/dz$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$3;->b:Lcom/google/android/gms/internal/dz;

    iget-wide v2, p0, Lcom/google/android/gms/internal/dz$3;->a:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/dz;->a(Lcom/google/android/gms/internal/dz;J)V

    return-void
.end method
