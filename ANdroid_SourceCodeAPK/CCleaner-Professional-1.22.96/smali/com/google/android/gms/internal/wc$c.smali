.class final Lcom/google/android/gms/internal/wc$c;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/wc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/wc$d;

.field final b:Z

.field final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLcom/google/android/gms/internal/wc$d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/wc$c;->b:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/wc$c;->a:Lcom/google/android/gms/internal/wc$d;

    iput-object p3, p0, Lcom/google/android/gms/internal/wc$c;->c:Ljava/lang/String;

    return-void
.end method
