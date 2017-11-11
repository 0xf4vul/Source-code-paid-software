.class public Lcom/google/android/gms/internal/zzbmn;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbmn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I
    .annotation runtime Lcom/google/android/gms/internal/gb;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "refresh_token"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "access_token"
    .end annotation
.end field

.field public d:Ljava/lang/Long;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "expires_in"
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "token_type"
    .end annotation
.end field

.field public f:Ljava/lang/Long;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "issued_at"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbmn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbmn;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->f:Ljava/lang/Long;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbmn;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbmn;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmn;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbmn;->d:Ljava/lang/Long;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbmn;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbmn;->f:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/gk;->a(Lcom/google/android/gms/internal/zzbmn;Landroid/os/Parcel;)V

    return-void
.end method
