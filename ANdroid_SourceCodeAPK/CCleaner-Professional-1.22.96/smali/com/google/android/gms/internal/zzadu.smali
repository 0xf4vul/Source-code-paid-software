.class public Lcom/google/android/gms/internal/zzadu;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzadu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field final b:J

.field final c:Lcom/google/android/gms/common/data/DataHolder;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final h:I

.field final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzadk;",
            ">;"
        }
    .end annotation
.end field

.field final j:I

.field final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzadu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzadk;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadu;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzadu;->b:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzadu;->c:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzadu;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzadu;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzadu;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzadu;->g:Ljava/util/List;

    iput p9, p0, Lcom/google/android/gms/internal/zzadu;->h:I

    iput-object p10, p0, Lcom/google/android/gms/internal/zzadu;->i:Ljava/util/List;

    iput p11, p0, Lcom/google/android/gms/internal/zzadu;->j:I

    iput p12, p0, Lcom/google/android/gms/internal/zzadu;->k:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/bo;->a(Lcom/google/android/gms/internal/zzadu;Landroid/os/Parcel;I)V

    return-void
.end method
